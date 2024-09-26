import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snap_shop/core/networking/api_error_handler.dart';
import 'package:snap_shop/features/cart/data/model/add_or_remove_cart_request_model.dart';
import 'package:snap_shop/features/cart/data/model/cart_response_model/cart_item.dart';
import 'package:snap_shop/features/cart/data/repo/cart_repo.dart';
part 'cart_state.dart';
part 'cart_cubit.freezed.dart';

class CartCubit extends Cubit<CartState> {
  static CartCubit get(context) => BlocProvider.of(context);
  final CartRepo _cartRepo;
  List<CartItem> cartItems = [];
  CartCubit(this._cartRepo) : super(const CartState.initial());

  Set<String> cartsId = {}; // لمتابعة العناصر في السلة

  // دالة لجلب بيانات السلة
  Future<void> getCart() async {
    emit(const CartState.cartloading());

    final response = await _cartRepo.getCart();
    response.when(success: (cartResponseModel) {
      cartItems = cartResponseModel.data!.cartItems!;
      // تحديث cartsId بناءً على العناصر الحالية في السلة
      cartsId.clear();
      cartResponseModel.data!.cartItems?.forEach((item) {
        cartsId.add(item.product!.id.toString());
      });
      print('Carts Number is ${cartResponseModel.data!.cartItems!.length}');
      emit(CartState.cartsuccess(cartDataList: cartItems));
    }, failure: (errorHandler) {
      emit(CartState.carterror(error: errorHandler));
    });
  }

  Future<void> emitAddOrRemoveCartItem({required int productId}) async {
    final response = await _cartRepo.addOrRemoveCart(
      AddOrRemoveCartRequestModel(productId: productId),
    );

    response.when(
      success: (addOrRemoveCartResponseModel) async {
        // تحديث حالة cartsId بناءً على الإضافة أو الإزالة
        if (cartsId.contains(productId.toString())) {
          cartsId.remove(productId.toString());
        } else {
          cartsId.add(productId.toString());
        }
        emit(CartState.addOrRemoveCartSuccess(
          addOrRemoveCartResponseModel,
        ));
        print('you are success adding to cart or remove from cart');
        await getCart();
      },
      failure: (error) {
        print('you are failed adding to cart or remove from cart');
        emit(CartState.addOrRemoveCartError(error: error));
      },
    );
  }
}
