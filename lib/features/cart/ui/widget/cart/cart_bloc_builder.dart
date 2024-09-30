import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/core/widget/custom_show_toast.dart';
import 'package:snap_shop/features/cart/logic/cart_cubit.dart';
import 'package:snap_shop/features/cart/ui/widget/cart/cart_list_view.dart';
import 'package:snap_shop/features/cart/ui/widget/cart/cart_shimmer_loading.dart';

class CartBlocBuilder extends StatelessWidget {
  const CartBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubit, CartState>(
        listener: (context, state) {
          state.maybeWhen(
            addOrRemoveCartError: (error) {
              showToast(msg: 'Failed', state: ToastStates.ERROR);
            },
            addOrRemoveCartSuccess: (data) {
              showToast(msg: 'Succesfully', state: ToastStates.SUCCESS);
            },
            orElse: () => const SizedBox.shrink(),
          );
        },
        buildWhen: (previous, current) =>
            current is CartLoading ||
            current is CartSuccess ||
            current is CartError,
        builder: (context, state) {
          return state.maybeWhen(
            cartloading: () => setUpLoading(),
            cartsuccess: (cartsDataList) {
              return setUpSuccess(cartsDataList!.data!.cartItems);
            },
            carterror: (error) => setupError(error),
            orElse: () => const SizedBox.shrink(),
          );
        });
  }

  // ignore: body_might_complete_normally_nullable
  Widget setupError(error) {
    showToast(msg: error.toString(), state: ToastStates.ERROR);
    return const SizedBox.shrink(); // أو يمكنك استخدام أي عنصر آخر كبديل
  }

  Widget setUpSuccess(cartsDataList) {
    return CartListView(
      cartItems: cartsDataList,
    );
  }

  Widget setUpLoading() {
    return const Scaffold(body: CartShimmerLoading());
  }
}
