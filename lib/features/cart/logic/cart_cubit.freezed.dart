// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cartloading,
    required TResult Function(List<CartItem>? cartDataList) cartsuccess,
    required TResult Function(ErrorHandler error) carterror,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cartloading,
    TResult? Function(List<CartItem>? cartDataList)? cartsuccess,
    TResult? Function(ErrorHandler error)? carterror,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartloading,
    TResult Function(List<CartItem>? cartDataList)? cartsuccess,
    TResult Function(ErrorHandler error)? carterror,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CartLoading value) cartloading,
    required TResult Function(CartSuccess value) cartsuccess,
    required TResult Function(CartError value) carterror,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CartLoading value)? cartloading,
    TResult? Function(CartSuccess value)? cartsuccess,
    TResult? Function(CartError value)? carterror,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CartLoading value)? cartloading,
    TResult Function(CartSuccess value)? cartsuccess,
    TResult Function(CartError value)? carterror,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CartState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cartloading,
    required TResult Function(List<CartItem>? cartDataList) cartsuccess,
    required TResult Function(ErrorHandler error) carterror,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cartloading,
    TResult? Function(List<CartItem>? cartDataList)? cartsuccess,
    TResult? Function(ErrorHandler error)? carterror,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartloading,
    TResult Function(List<CartItem>? cartDataList)? cartsuccess,
    TResult Function(ErrorHandler error)? carterror,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CartLoading value) cartloading,
    required TResult Function(CartSuccess value) cartsuccess,
    required TResult Function(CartError value) carterror,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CartLoading value)? cartloading,
    TResult? Function(CartSuccess value)? cartsuccess,
    TResult? Function(CartError value)? carterror,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CartLoading value)? cartloading,
    TResult Function(CartSuccess value)? cartsuccess,
    TResult Function(CartError value)? carterror,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CartLoadingImplCopyWith<$Res> {
  factory _$$CartLoadingImplCopyWith(
          _$CartLoadingImpl value, $Res Function(_$CartLoadingImpl) then) =
      __$$CartLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartLoadingImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartLoadingImpl>
    implements _$$CartLoadingImplCopyWith<$Res> {
  __$$CartLoadingImplCopyWithImpl(
      _$CartLoadingImpl _value, $Res Function(_$CartLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CartLoadingImpl implements CartLoading {
  const _$CartLoadingImpl();

  @override
  String toString() {
    return 'CartState.cartloading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cartloading,
    required TResult Function(List<CartItem>? cartDataList) cartsuccess,
    required TResult Function(ErrorHandler error) carterror,
  }) {
    return cartloading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cartloading,
    TResult? Function(List<CartItem>? cartDataList)? cartsuccess,
    TResult? Function(ErrorHandler error)? carterror,
  }) {
    return cartloading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartloading,
    TResult Function(List<CartItem>? cartDataList)? cartsuccess,
    TResult Function(ErrorHandler error)? carterror,
    required TResult orElse(),
  }) {
    if (cartloading != null) {
      return cartloading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CartLoading value) cartloading,
    required TResult Function(CartSuccess value) cartsuccess,
    required TResult Function(CartError value) carterror,
  }) {
    return cartloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CartLoading value)? cartloading,
    TResult? Function(CartSuccess value)? cartsuccess,
    TResult? Function(CartError value)? carterror,
  }) {
    return cartloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CartLoading value)? cartloading,
    TResult Function(CartSuccess value)? cartsuccess,
    TResult Function(CartError value)? carterror,
    required TResult orElse(),
  }) {
    if (cartloading != null) {
      return cartloading(this);
    }
    return orElse();
  }
}

abstract class CartLoading implements CartState {
  const factory CartLoading() = _$CartLoadingImpl;
}

/// @nodoc
abstract class _$$CartSuccessImplCopyWith<$Res> {
  factory _$$CartSuccessImplCopyWith(
          _$CartSuccessImpl value, $Res Function(_$CartSuccessImpl) then) =
      __$$CartSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CartItem>? cartDataList});
}

/// @nodoc
class __$$CartSuccessImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartSuccessImpl>
    implements _$$CartSuccessImplCopyWith<$Res> {
  __$$CartSuccessImplCopyWithImpl(
      _$CartSuccessImpl _value, $Res Function(_$CartSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartDataList = freezed,
  }) {
    return _then(_$CartSuccessImpl(
      cartDataList: freezed == cartDataList
          ? _value._cartDataList
          : cartDataList // ignore: cast_nullable_to_non_nullable
              as List<CartItem>?,
    ));
  }
}

/// @nodoc

class _$CartSuccessImpl implements CartSuccess {
  const _$CartSuccessImpl({required final List<CartItem>? cartDataList})
      : _cartDataList = cartDataList;

  final List<CartItem>? _cartDataList;
  @override
  List<CartItem>? get cartDataList {
    final value = _cartDataList;
    if (value == null) return null;
    if (_cartDataList is EqualUnmodifiableListView) return _cartDataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CartState.cartsuccess(cartDataList: $cartDataList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._cartDataList, _cartDataList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cartDataList));

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartSuccessImplCopyWith<_$CartSuccessImpl> get copyWith =>
      __$$CartSuccessImplCopyWithImpl<_$CartSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cartloading,
    required TResult Function(List<CartItem>? cartDataList) cartsuccess,
    required TResult Function(ErrorHandler error) carterror,
  }) {
    return cartsuccess(cartDataList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cartloading,
    TResult? Function(List<CartItem>? cartDataList)? cartsuccess,
    TResult? Function(ErrorHandler error)? carterror,
  }) {
    return cartsuccess?.call(cartDataList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartloading,
    TResult Function(List<CartItem>? cartDataList)? cartsuccess,
    TResult Function(ErrorHandler error)? carterror,
    required TResult orElse(),
  }) {
    if (cartsuccess != null) {
      return cartsuccess(cartDataList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CartLoading value) cartloading,
    required TResult Function(CartSuccess value) cartsuccess,
    required TResult Function(CartError value) carterror,
  }) {
    return cartsuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CartLoading value)? cartloading,
    TResult? Function(CartSuccess value)? cartsuccess,
    TResult? Function(CartError value)? carterror,
  }) {
    return cartsuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CartLoading value)? cartloading,
    TResult Function(CartSuccess value)? cartsuccess,
    TResult Function(CartError value)? carterror,
    required TResult orElse(),
  }) {
    if (cartsuccess != null) {
      return cartsuccess(this);
    }
    return orElse();
  }
}

abstract class CartSuccess implements CartState {
  const factory CartSuccess({required final List<CartItem>? cartDataList}) =
      _$CartSuccessImpl;

  List<CartItem>? get cartDataList;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartSuccessImplCopyWith<_$CartSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartErrorImplCopyWith<$Res> {
  factory _$$CartErrorImplCopyWith(
          _$CartErrorImpl value, $Res Function(_$CartErrorImpl) then) =
      __$$CartErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler error});
}

/// @nodoc
class __$$CartErrorImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartErrorImpl>
    implements _$$CartErrorImplCopyWith<$Res> {
  __$$CartErrorImplCopyWithImpl(
      _$CartErrorImpl _value, $Res Function(_$CartErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CartErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$CartErrorImpl implements CartError {
  const _$CartErrorImpl({required this.error});

  @override
  final ErrorHandler error;

  @override
  String toString() {
    return 'CartState.carterror(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartErrorImplCopyWith<_$CartErrorImpl> get copyWith =>
      __$$CartErrorImplCopyWithImpl<_$CartErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cartloading,
    required TResult Function(List<CartItem>? cartDataList) cartsuccess,
    required TResult Function(ErrorHandler error) carterror,
  }) {
    return carterror(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cartloading,
    TResult? Function(List<CartItem>? cartDataList)? cartsuccess,
    TResult? Function(ErrorHandler error)? carterror,
  }) {
    return carterror?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartloading,
    TResult Function(List<CartItem>? cartDataList)? cartsuccess,
    TResult Function(ErrorHandler error)? carterror,
    required TResult orElse(),
  }) {
    if (carterror != null) {
      return carterror(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CartLoading value) cartloading,
    required TResult Function(CartSuccess value) cartsuccess,
    required TResult Function(CartError value) carterror,
  }) {
    return carterror(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CartLoading value)? cartloading,
    TResult? Function(CartSuccess value)? cartsuccess,
    TResult? Function(CartError value)? carterror,
  }) {
    return carterror?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CartLoading value)? cartloading,
    TResult Function(CartSuccess value)? cartsuccess,
    TResult Function(CartError value)? carterror,
    required TResult orElse(),
  }) {
    if (carterror != null) {
      return carterror(this);
    }
    return orElse();
  }
}

abstract class CartError implements CartState {
  const factory CartError({required final ErrorHandler error}) =
      _$CartErrorImpl;

  ErrorHandler get error;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartErrorImplCopyWith<_$CartErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
