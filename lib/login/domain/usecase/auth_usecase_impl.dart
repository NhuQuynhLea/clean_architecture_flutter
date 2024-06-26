import 'dart:async';

import 'package:clean_architecture_flutter/configs/core/usecase.dart';

import 'package:dartz/dartz.dart';

import '../../data/models/LoginResp.dart';
import '../repository/auth_repo.dart';

class LoginUseCase
    extends UseCase<Either<String, LoginResp>, Map<String, dynamic>> {
  final AuthRepo _repo;
  LoginUseCase(this._repo);
  @override
  Future<Either<String, LoginResp>> call(Map<String, dynamic> params) {
    return _repo.requestLogin(params);
  }
}
