import 'dart:async';

import 'package:clean_architecture_flutter/login/data/remote/source/remote_data_source.dart';

import '../../models/LoginResp.dart';
import '../service/auth_service.dart';

class RemoteDataSourceImpl extends RemoteDataSource {
  final AuthService _authService;

  RemoteDataSourceImpl(this._authService);

  @override
  Future<LoginResp> requestLogin(Map<String, dynamic> body) {
    return _authService.requestLogin(body);
  }
}
