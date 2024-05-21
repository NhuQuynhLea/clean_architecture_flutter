

import 'dart:async';

import 'package:clean_architecture_flutter/data/models/LoginResp.dart';
import 'package:clean_architecture_flutter/data/remote/service/auth_service.dart';
import 'package:clean_architecture_flutter/data/remote/source/remote_data_source.dart';

class RemoteDataSourceImpl extends RemoteDataSource{
  final AuthService _authService;

  RemoteDataSourceImpl(this._authService);

  @override
  FutureOr<LoginResp> requestLogin(Map<String, dynamic> body) {
    return _authService.requestLogin(body);
  }

}