

import 'dart:async';
import 'package:dartz/dartz.dart';

import '../../data/models/LoginResp.dart';

abstract class AuthRepo {
  FutureOr<Either<String,LoginResp>> requestLogin(Map<String,dynamic> body);
}