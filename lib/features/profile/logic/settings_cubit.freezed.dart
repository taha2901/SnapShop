// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() settingsLoading,
    required TResult Function(ProfileModel? profileModel) settingsSuccess,
    required TResult Function(ErrorHandler errorHandler) settingsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? settingsLoading,
    TResult? Function(ProfileModel? profileModel)? settingsSuccess,
    TResult? Function(ErrorHandler errorHandler)? settingsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? settingsLoading,
    TResult Function(ProfileModel? profileModel)? settingsSuccess,
    TResult Function(ErrorHandler errorHandler)? settingsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileLoading value) settingsLoading,
    required TResult Function(ProfileSuccess value) settingsSuccess,
    required TResult Function(ProfileError value) settingsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileLoading value)? settingsLoading,
    TResult? Function(ProfileSuccess value)? settingsSuccess,
    TResult? Function(ProfileError value)? settingsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileLoading value)? settingsLoading,
    TResult Function(ProfileSuccess value)? settingsSuccess,
    TResult Function(ProfileError value)? settingsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$SettingsStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsState
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
    extends _$SettingsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SettingsState.initial()';
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
    required TResult Function() settingsLoading,
    required TResult Function(ProfileModel? profileModel) settingsSuccess,
    required TResult Function(ErrorHandler errorHandler) settingsError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? settingsLoading,
    TResult? Function(ProfileModel? profileModel)? settingsSuccess,
    TResult? Function(ErrorHandler errorHandler)? settingsError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? settingsLoading,
    TResult Function(ProfileModel? profileModel)? settingsSuccess,
    TResult Function(ErrorHandler errorHandler)? settingsError,
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
    required TResult Function(ProfileLoading value) settingsLoading,
    required TResult Function(ProfileSuccess value) settingsSuccess,
    required TResult Function(ProfileError value) settingsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileLoading value)? settingsLoading,
    TResult? Function(ProfileSuccess value)? settingsSuccess,
    TResult? Function(ProfileError value)? settingsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileLoading value)? settingsLoading,
    TResult Function(ProfileSuccess value)? settingsSuccess,
    TResult Function(ProfileError value)? settingsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SettingsLoadingImplCopyWith<$Res> {
  factory _$$SettingsLoadingImplCopyWith(_$SettingsLoadingImpl value,
          $Res Function(_$SettingsLoadingImpl) then) =
      __$$SettingsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsLoadingImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsLoadingImpl>
    implements _$$SettingsLoadingImplCopyWith<$Res> {
  __$$SettingsLoadingImplCopyWithImpl(
      _$SettingsLoadingImpl _value, $Res Function(_$SettingsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SettingsLoadingImpl implements ProfileLoading {
  const _$SettingsLoadingImpl();

  @override
  String toString() {
    return 'SettingsState.settingsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() settingsLoading,
    required TResult Function(ProfileModel? profileModel) settingsSuccess,
    required TResult Function(ErrorHandler errorHandler) settingsError,
  }) {
    return settingsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? settingsLoading,
    TResult? Function(ProfileModel? profileModel)? settingsSuccess,
    TResult? Function(ErrorHandler errorHandler)? settingsError,
  }) {
    return settingsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? settingsLoading,
    TResult Function(ProfileModel? profileModel)? settingsSuccess,
    TResult Function(ErrorHandler errorHandler)? settingsError,
    required TResult orElse(),
  }) {
    if (settingsLoading != null) {
      return settingsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileLoading value) settingsLoading,
    required TResult Function(ProfileSuccess value) settingsSuccess,
    required TResult Function(ProfileError value) settingsError,
  }) {
    return settingsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileLoading value)? settingsLoading,
    TResult? Function(ProfileSuccess value)? settingsSuccess,
    TResult? Function(ProfileError value)? settingsError,
  }) {
    return settingsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileLoading value)? settingsLoading,
    TResult Function(ProfileSuccess value)? settingsSuccess,
    TResult Function(ProfileError value)? settingsError,
    required TResult orElse(),
  }) {
    if (settingsLoading != null) {
      return settingsLoading(this);
    }
    return orElse();
  }
}

abstract class ProfileLoading implements ProfileState {
  const factory ProfileLoading() = _$SettingsLoadingImpl;
}

/// @nodoc
abstract class _$$SettingsSuccessImplCopyWith<$Res> {
  factory _$$SettingsSuccessImplCopyWith(_$SettingsSuccessImpl value,
          $Res Function(_$SettingsSuccessImpl) then) =
      __$$SettingsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileModel? profileModel});
}

/// @nodoc
class __$$SettingsSuccessImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsSuccessImpl>
    implements _$$SettingsSuccessImplCopyWith<$Res> {
  __$$SettingsSuccessImplCopyWithImpl(
      _$SettingsSuccessImpl _value, $Res Function(_$SettingsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileModel = freezed,
  }) {
    return _then(_$SettingsSuccessImpl(
      profileModel: freezed == profileModel
          ? _value.profileModel
          : profileModel // ignore: cast_nullable_to_non_nullable
              as ProfileModel?,
    ));
  }
}

/// @nodoc

class _$SettingsSuccessImpl implements ProfileSuccess {
  const _$SettingsSuccessImpl({required this.profileModel});

  @override
  final ProfileModel? profileModel;

  @override
  String toString() {
    return 'SettingsState.settingsSuccess(profileModel: $profileModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsSuccessImpl &&
            (identical(other.profileModel, profileModel) ||
                other.profileModel == profileModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profileModel);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsSuccessImplCopyWith<_$SettingsSuccessImpl> get copyWith =>
      __$$SettingsSuccessImplCopyWithImpl<_$SettingsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() settingsLoading,
    required TResult Function(ProfileModel? profileModel) settingsSuccess,
    required TResult Function(ErrorHandler errorHandler) settingsError,
  }) {
    return settingsSuccess(profileModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? settingsLoading,
    TResult? Function(ProfileModel? profileModel)? settingsSuccess,
    TResult? Function(ErrorHandler errorHandler)? settingsError,
  }) {
    return settingsSuccess?.call(profileModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? settingsLoading,
    TResult Function(ProfileModel? profileModel)? settingsSuccess,
    TResult Function(ErrorHandler errorHandler)? settingsError,
    required TResult orElse(),
  }) {
    if (settingsSuccess != null) {
      return settingsSuccess(profileModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileLoading value) settingsLoading,
    required TResult Function(ProfileSuccess value) settingsSuccess,
    required TResult Function(ProfileError value) settingsError,
  }) {
    return settingsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileLoading value)? settingsLoading,
    TResult? Function(ProfileSuccess value)? settingsSuccess,
    TResult? Function(ProfileError value)? settingsError,
  }) {
    return settingsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileLoading value)? settingsLoading,
    TResult Function(ProfileSuccess value)? settingsSuccess,
    TResult Function(ProfileError value)? settingsError,
    required TResult orElse(),
  }) {
    if (settingsSuccess != null) {
      return settingsSuccess(this);
    }
    return orElse();
  }
}

abstract class ProfileSuccess implements ProfileState {
  const factory ProfileSuccess({required final ProfileModel? profileModel}) =
      _$SettingsSuccessImpl;

  ProfileModel? get profileModel;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsSuccessImplCopyWith<_$SettingsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsErrorImplCopyWith<$Res> {
  factory _$$SettingsErrorImplCopyWith(
          _$SettingsErrorImpl value, $Res Function(_$SettingsErrorImpl) then) =
      __$$SettingsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$SettingsErrorImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsErrorImpl>
    implements _$$SettingsErrorImplCopyWith<$Res> {
  __$$SettingsErrorImplCopyWithImpl(
      _$SettingsErrorImpl _value, $Res Function(_$SettingsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$SettingsErrorImpl(
      errorHandler: null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$SettingsErrorImpl implements ProfileError {
  const _$SettingsErrorImpl({required this.errorHandler});

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'SettingsState.settingsError(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsErrorImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsErrorImplCopyWith<_$SettingsErrorImpl> get copyWith =>
      __$$SettingsErrorImplCopyWithImpl<_$SettingsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() settingsLoading,
    required TResult Function(ProfileModel? profileModel) settingsSuccess,
    required TResult Function(ErrorHandler errorHandler) settingsError,
  }) {
    return settingsError(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? settingsLoading,
    TResult? Function(ProfileModel? profileModel)? settingsSuccess,
    TResult? Function(ErrorHandler errorHandler)? settingsError,
  }) {
    return settingsError?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? settingsLoading,
    TResult Function(ProfileModel? profileModel)? settingsSuccess,
    TResult Function(ErrorHandler errorHandler)? settingsError,
    required TResult orElse(),
  }) {
    if (settingsError != null) {
      return settingsError(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileLoading value) settingsLoading,
    required TResult Function(ProfileSuccess value) settingsSuccess,
    required TResult Function(ProfileError value) settingsError,
  }) {
    return settingsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileLoading value)? settingsLoading,
    TResult? Function(ProfileSuccess value)? settingsSuccess,
    TResult? Function(ProfileError value)? settingsError,
  }) {
    return settingsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileLoading value)? settingsLoading,
    TResult Function(ProfileSuccess value)? settingsSuccess,
    TResult Function(ProfileError value)? settingsError,
    required TResult orElse(),
  }) {
    if (settingsError != null) {
      return settingsError(this);
    }
    return orElse();
  }
}

abstract class ProfileError implements ProfileState {
  const factory ProfileError({required final ErrorHandler errorHandler}) =
      _$SettingsErrorImpl;

  ErrorHandler get errorHandler;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsErrorImplCopyWith<_$SettingsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
