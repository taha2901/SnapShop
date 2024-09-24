import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snap_shop/core/networking/api_error_handler.dart';
import 'package:snap_shop/features/cart/data/model/cart_item.dart';
import 'package:snap_shop/features/cart/data/model/data.dart';
import 'package:snap_shop/features/cart/data/model/product.dart';
import 'package:snap_shop/features/cart/data/repo/cart_repo.dart';

part 'cart_state.dart';
part 'cart_cubit.freezed.dart';

class CartCubit extends Cubit<CartState> {
  final CartRepo _cartRepo;
  CartCubit(this._cartRepo) : super(const CartState.initial());

  void getCart() async {
    emit(const CartState.cartloading());

    final response = await _cartRepo.getCart();
    response.when(success: (cartResponseModel) {
      print('cartRRResponseModel: ${cartResponseModel.data!.cartItems}');
      emit(CartState.cartsuccess(cartDataList: cartResponseModel.data!.cartItems!));
    }, failure: (errorHandler) {
      print('Error: ${errorHandler.toString()}');
      emit(CartState.carterror(error: errorHandler));
    });
  }
}
