import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/core/widget/custom_show_toast.dart';
import 'package:snap_shop/features/cart/logic/cart_cubit.dart';
import 'package:snap_shop/features/cart/ui/widget/cart/cart_list_view.dart';

class CartBlocBuilder extends StatelessWidget {
  const CartBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
        buildWhen: (previous, current) =>
            current is CartLoading ||
            current is CartSuccess ||
            current is CartError,
        builder: (context, state) {
          return state.maybeWhen(
            cartloading: () => setUpLoading(),
            cartsuccess: (cartsDataList) {
              return setUpSuccess(cartsDataList);
            },
            carterror: (error) => setupError(error)!,
            orElse: () => const SizedBox.shrink(),
          );
        });
  }

  Widget? setupError(error) {
    showToast(msg: error.toString(), state: ToastStates.ERROR);
  }

  Widget setUpSuccess(cartsDataList) {
    return CartListView(
      cartItem: cartsDataList,
    );
  }

  Widget setUpLoading() {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
