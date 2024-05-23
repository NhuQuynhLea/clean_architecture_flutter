// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'LoginResp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResp _$LoginRespFromJson(Map<String, dynamic> json) {
  return _LoginResp.fromJson(json);
}

/// @nodoc
mixin _$LoginResp {
  @JsonKey(name: 'accessToken')
  String get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginRespCopyWith<LoginResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRespCopyWith<$Res> {
  factory $LoginRespCopyWith(LoginResp value, $Res Function(LoginResp) then) =
      _$LoginRespCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'accessToken') String accessToken});
}

/// @nodoc
class _$LoginRespCopyWithImpl<$Res> implements $LoginRespCopyWith<$Res> {
  _$LoginRespCopyWithImpl(this._value, this._then);

  final LoginResp _value;
  // ignore: unused_field
  final $Res Function(LoginResp) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginRespCopyWith<$Res> implements $LoginRespCopyWith<$Res> {
  factory _$$_LoginRespCopyWith(
          _$_LoginResp value, $Res Function(_$_LoginResp) then) =
      __$$_LoginRespCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'accessToken') String accessToken});
}

/// @nodoc
class __$$_LoginRespCopyWithImpl<$Res> extends _$LoginRespCopyWithImpl<$Res>
    implements _$$_LoginRespCopyWith<$Res> {
  __$$_LoginRespCopyWithImpl(
      _$_LoginResp _value, $Res Function(_$_LoginResp) _then)
      : super(_value, (v) => _then(v as _$_LoginResp));

  @override
  _$_LoginResp get _value => super._value as _$_LoginResp;

  @override
  $Res call({
    Object? accessToken = freezed,
  }) {
    return _then(_$_LoginResp(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginResp implements _LoginResp {
  const _$_LoginResp({@JsonKey(name: 'accessToken') required this.accessToken});

  factory _$_LoginResp.fromJson(Map<String, dynamic> json) =>
      _$$_LoginRespFromJson(json);

  @override
  @JsonKey(name: 'accessToken')
  final String accessToken;

  @override
  String toString() {
    return 'LoginResp(accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginResp &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(accessToken));

  @JsonKey(ignore: true)
  @override
  _$$_LoginRespCopyWith<_$_LoginResp> get copyWith =>
      __$$_LoginRespCopyWithImpl<_$_LoginResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginRespToJson(
      this,
    );
  }
}

abstract class _LoginResp implements LoginResp {
  const factory _LoginResp(
          {@JsonKey(name: 'accessToken') required final String accessToken}) =
      _$_LoginResp;

  factory _LoginResp.fromJson(Map<String, dynamic> json) =
      _$_LoginResp.fromJson;

  @override
  @JsonKey(name: 'accessToken')
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$_LoginRespCopyWith<_$_LoginResp> get copyWith =>
      throw _privateConstructorUsedError;
}
