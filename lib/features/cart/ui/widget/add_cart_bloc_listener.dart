// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:snap_shop/core/widget/custom_show_toast.dart';
// import 'package:snap_shop/features/cart/logic/cart_cubit.dart';

// class AddCartBlocListener extends StatelessWidget {
//   const AddCartBlocListener({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<CartCubit, CartState>(
//       listenWhen: (previous, current) =>
//           current is AddOrRemoveCartSuccess ||
//           current is AddOrRemoveCartError,
//       listener: (context, state) {
//         state.whenOrNull(
//           addOrRemoveCartSuccess: (data) {
//             showToast(msg: 'Addded Succesfully', state: ToastStates.SUCCESS);
//           },
//           addOrRemoveCartError: (error) {
//             showToast(msg: 'Addded Failed', state: ToastStates.ERROR);
//           },
//         );
//       },
//       child: const SizedBox.shrink(),
//     );
//   }
// }
