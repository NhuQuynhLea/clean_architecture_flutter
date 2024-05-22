
import 'dart:async';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../../models/LoginResp.dart';

part 'auth_service.g.dart';
@RestApi(baseUrl: "http://192.168.4.130:8080/api")
abstract class AuthService {
  factory AuthService(Dio dio) = _AuthService;

  @POST("http://192.168.4.130:8080/api/login")
  Future<LoginResp> requestLogin(@Body() Map<String, dynamic> body);
}