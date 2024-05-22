import 'dart:developer';

import 'package:clean_architecture_flutter/data/local/local_datasource.dart';
import 'package:dio/dio.dart';


class DioProvider {
  static Dio instance(LocalDatasource localDataSource) {
    final dio = Dio();

    dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (options, handler) async {
          String? token =
          await localDataSource.getString("token");
          if (token != null) {
            options.headers["Authorization"] = 'Bearer $token';
          }
          options.headers["Accept"] = 'application/json';
          print(
            "onRequest: ${options.uri}\n"
                "data=${options.data}\n"
                "method=${options.method}\n"
                "headers=${options.headers}\n"
                "queryParameters=${options.queryParameters}",
          );

          return handler.next(options);
        },
        onResponse: (Response response, handler) async {
          log("onResponse: $response");
          return handler.next(response);
        },
        onError: (DioError err, handler) async {
          return handler.next(err);
        },
      ),
    );
    return dio;
  }
}
