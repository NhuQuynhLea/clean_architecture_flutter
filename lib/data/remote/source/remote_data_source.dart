
import 'dart:async';

import '../../models/LoginResp.dart';

abstract class RemoteDataSource{
  FutureOr<LoginResp> requestLogin(Map<String,dynamic> body);

}