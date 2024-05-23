
import 'dart:async';

import '../../models/LoginResp.dart';

abstract class RemoteDataSource{
  Future<LoginResp> requestLogin(Map<String,dynamic> body);

}