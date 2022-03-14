// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileDTO _$ProfileDTOFromJson(Map<String, dynamic> json) {
  return _ProfileDTO.fromJson(json);
}

/// @nodoc
class _$ProfileDTOTearOff {
  const _$ProfileDTOTearOff();

  _ProfileDTO call(
      {required int id,
      required String username,
      required String fullname,
      String phone = "",
      String email = "",
      String bio = ""}) {
    return _ProfileDTO(
      id: id,
      username: username,
      fullname: fullname,
      phone: phone,
      email: email,
      bio: bio,
    );
  }

  ProfileDTO fromJson(Map<String, Object?> json) {
    return ProfileDTO.fromJson(json);
  }
}

/// @nodoc
const $ProfileDTO = _$ProfileDTOTearOff();

/// @nodoc
mixin _$ProfileDTO {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get fullname => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileDTOCopyWith<ProfileDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDTOCopyWith<$Res> {
  factory $ProfileDTOCopyWith(
          ProfileDTO value, $Res Function(ProfileDTO) then) =
      _$ProfileDTOCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String username,
      String fullname,
      String phone,
      String email,
      String bio});
}

/// @nodoc
class _$ProfileDTOCopyWithImpl<$Res> implements $ProfileDTOCopyWith<$Res> {
  _$ProfileDTOCopyWithImpl(this._value, this._then);

  final ProfileDTO _value;
  // ignore: unused_field
  final $Res Function(ProfileDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? fullname = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? bio = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProfileDTOCopyWith<$Res> implements $ProfileDTOCopyWith<$Res> {
  factory _$ProfileDTOCopyWith(
          _ProfileDTO value, $Res Function(_ProfileDTO) then) =
      __$ProfileDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String username,
      String fullname,
      String phone,
      String email,
      String bio});
}

/// @nodoc
class __$ProfileDTOCopyWithImpl<$Res> extends _$ProfileDTOCopyWithImpl<$Res>
    implements _$ProfileDTOCopyWith<$Res> {
  __$ProfileDTOCopyWithImpl(
      _ProfileDTO _value, $Res Function(_ProfileDTO) _then)
      : super(_value, (v) => _then(v as _ProfileDTO));

  @override
  _ProfileDTO get _value => super._value as _ProfileDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? fullname = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? bio = freezed,
  }) {
    return _then(_ProfileDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileDTO implements _ProfileDTO {
  const _$_ProfileDTO(
      {required this.id,
      required this.username,
      required this.fullname,
      this.phone = "",
      this.email = "",
      this.bio = ""});

  factory _$_ProfileDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileDTOFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String fullname;
  @JsonKey()
  @override
  final String phone;
  @JsonKey()
  @override
  final String email;
  @JsonKey()
  @override
  final String bio;

  @override
  String toString() {
    return 'ProfileDTO(id: $id, username: $username, fullname: $fullname, phone: $phone, email: $email, bio: $bio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.fullname, fullname) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.bio, bio));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(fullname),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(bio));

  @JsonKey(ignore: true)
  @override
  _$ProfileDTOCopyWith<_ProfileDTO> get copyWith =>
      __$ProfileDTOCopyWithImpl<_ProfileDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileDTOToJson(this);
  }
}

abstract class _ProfileDTO implements ProfileDTO {
  const factory _ProfileDTO(
      {required int id,
      required String username,
      required String fullname,
      String phone,
      String email,
      String bio}) = _$_ProfileDTO;

  factory _ProfileDTO.fromJson(Map<String, dynamic> json) =
      _$_ProfileDTO.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  String get fullname;
  @override
  String get phone;
  @override
  String get email;
  @override
  String get bio;
  @override
  @JsonKey(ignore: true)
  _$ProfileDTOCopyWith<_ProfileDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
