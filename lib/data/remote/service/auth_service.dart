
import 'dart:async';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../../models/LoginResp.dart';

part 'auth_service.g.dart';
@RestApi(baseUrl: "")
abstract class AuthService {
  factory AuthService(Dio dio) = _AuthService;

  @POST("/login")
  Future<LoginResp> requestLogin(@Body() Map<String, dynamic> body);
}