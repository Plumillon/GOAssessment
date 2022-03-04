// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  ProfileStateInitial initial() {
    return const ProfileStateInitial();
  }

  ProfileStateLoading loading() {
    return const ProfileStateLoading();
  }

  ProfileStateLoaded loaded({required List<ProfileModel> profiles}) {
    return ProfileStateLoaded(
      profiles: profiles,
    );
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProfileModel> profiles) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProfileModel> profiles)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProfileModel> profiles)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileStateInitial value) initial,
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ProfileStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileStateInitial value)? initial,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateInitial value)? initial,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;
}

/// @nodoc
abstract class $ProfileStateInitialCopyWith<$Res> {
  factory $ProfileStateInitialCopyWith(
          ProfileStateInitial value, $Res Function(ProfileStateInitial) then) =
      _$ProfileStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateInitialCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileStateInitialCopyWith<$Res> {
  _$ProfileStateInitialCopyWithImpl(
      ProfileStateInitial _value, $Res Function(ProfileStateInitial) _then)
      : super(_value, (v) => _then(v as ProfileStateInitial));

  @override
  ProfileStateInitial get _value => super._value as ProfileStateInitial;
}

/// @nodoc

class _$ProfileStateInitial implements ProfileStateInitial {
  const _$ProfileStateInitial();

  @override
  String toString() {
    return 'ProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProfileStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProfileModel> profiles) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProfileModel> profiles)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProfileModel> profiles)? loaded,
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
    required TResult Function(ProfileStateInitial value) initial,
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ProfileStateLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileStateInitial value)? initial,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateInitial value)? initial,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProfileStateInitial implements ProfileState {
  const factory ProfileStateInitial() = _$ProfileStateInitial;
}

/// @nodoc
abstract class $ProfileStateLoadingCopyWith<$Res> {
  factory $ProfileStateLoadingCopyWith(
          ProfileStateLoading value, $Res Function(ProfileStateLoading) then) =
      _$ProfileStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateLoadingCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileStateLoadingCopyWith<$Res> {
  _$ProfileStateLoadingCopyWithImpl(
      ProfileStateLoading _value, $Res Function(ProfileStateLoading) _then)
      : super(_value, (v) => _then(v as ProfileStateLoading));

  @override
  ProfileStateLoading get _value => super._value as ProfileStateLoading;
}

/// @nodoc

class _$ProfileStateLoading implements ProfileStateLoading {
  const _$ProfileStateLoading();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProfileStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProfileModel> profiles) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProfileModel> profiles)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProfileModel> profiles)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileStateInitial value) initial,
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ProfileStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileStateInitial value)? initial,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateInitial value)? initial,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileStateLoading implements ProfileState {
  const factory ProfileStateLoading() = _$ProfileStateLoading;
}

/// @nodoc
abstract class $ProfileStateLoadedCopyWith<$Res> {
  factory $ProfileStateLoadedCopyWith(
          ProfileStateLoaded value, $Res Function(ProfileStateLoaded) then) =
      _$ProfileStateLoadedCopyWithImpl<$Res>;
  $Res call({List<ProfileModel> profiles});
}

/// @nodoc
class _$ProfileStateLoadedCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileStateLoadedCopyWith<$Res> {
  _$ProfileStateLoadedCopyWithImpl(
      ProfileStateLoaded _value, $Res Function(ProfileStateLoaded) _then)
      : super(_value, (v) => _then(v as ProfileStateLoaded));

  @override
  ProfileStateLoaded get _value => super._value as ProfileStateLoaded;

  @override
  $Res call({
    Object? profiles = freezed,
  }) {
    return _then(ProfileStateLoaded(
      profiles: profiles == freezed
          ? _value.profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<ProfileModel>,
    ));
  }
}

/// @nodoc

class _$ProfileStateLoaded implements ProfileStateLoaded {
  const _$ProfileStateLoaded({required this.profiles});

  @override
  final List<ProfileModel> profiles;

  @override
  String toString() {
    return 'ProfileState.loaded(profiles: $profiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileStateLoaded &&
            const DeepCollectionEquality().equals(other.profiles, profiles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(profiles));

  @JsonKey(ignore: true)
  @override
  $ProfileStateLoadedCopyWith<ProfileStateLoaded> get copyWith =>
      _$ProfileStateLoadedCopyWithImpl<ProfileStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProfileModel> profiles) loaded,
  }) {
    return loaded(profiles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProfileModel> profiles)? loaded,
  }) {
    return loaded?.call(profiles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProfileModel> profiles)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(profiles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileStateInitial value) initial,
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ProfileStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileStateInitial value)? initial,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateInitial value)? initial,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProfileStateLoaded implements ProfileState {
  const factory ProfileStateLoaded({required List<ProfileModel> profiles}) =
      _$ProfileStateLoaded;

  List<ProfileModel> get profiles;
  @JsonKey(ignore: true)
  $ProfileStateLoadedCopyWith<ProfileStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
