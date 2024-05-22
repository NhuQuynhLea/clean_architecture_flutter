
import 'dart:async';

import 'package:clean_architecture_flutter/data/local/local_datasource.dart';
import 'package:clean_architecture_flutter/data/models/LoginResp.dart';
import 'package:clean_architecture_flutter/data/remote/source/remote_data_source.dart';
import 'package:clean_architecture_flutter/domain/repository/auth_repo.dart';
import 'package:dartz/dartz.dart';

class AuthRepoImpl extends AuthRepo {
  final RemoteDataSource _remoteDataSource;
  final LocalDatasource _localDatasource;

  AuthRepoImpl(this._localDatasource, this._remoteDataSource);

  @override
  Future<Either<String, LoginResp>> requestLogin(Map<String, dynamic> body) async{
    try{
      final res = await _remoteDataSource.requestLogin(body);
      await _localDatasource.saveString("token", res.accessToken);
      return right(res);
    }catch(e) {
      return left(e.toString());
    }
  }

}