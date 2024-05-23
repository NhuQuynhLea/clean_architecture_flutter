import 'package:freezed_annotation/freezed_annotation.dart';

part 'LoginResp.freezed.dart';
part 'LoginResp.g.dart';

@freezed
class LoginResp with _$LoginResp {
  const factory LoginResp({
    @JsonKey(name: 'accessToken') required String accessToken,
  }) = _LoginResp;

  factory LoginResp.fromJson(Map<String, dynamic> json) =>
      _$LoginRespFromJson(json);
}

