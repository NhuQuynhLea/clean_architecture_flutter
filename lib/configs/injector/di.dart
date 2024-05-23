import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../login/data/local/local_datasource.dart';
import '../../login/data/local/local_datasource_impl.dart';
import '../../login/data/remote/service/auth_service.dart';
import '../../login/data/remote/source/remote_data_source.dart';
import '../../login/data/remote/source/remote_data_source_impl.dart';
import '../../login/data/repository/auth_repo_impl.dart';
import '../../login/domain/repository/auth_repo.dart';
import '../../login/domain/usecase/auth_usecase_impl.dart';
import '../network/dio_provider.dart';

class DI {
  DI._();
  static final _getIt = GetIt.instance;

  static Future configDependencies() async {
    final sharedPreference = await SharedPreferences.getInstance();
    _getIt.registerSingleton(sharedPreference);
    final localDataSourceImpl = LocalDataSourceImpl(resolve());
    _getIt.registerSingleton<LocalDatasource>(localDataSourceImpl);
    final dio = DioProvider.instance(resolve());
    _getIt.registerSingleton(dio);
    _getIt.registerSingleton(AuthService(resolve()));
    _getIt.registerSingleton<RemoteDataSource>(RemoteDataSourceImpl(resolve()));
    _getIt.registerSingleton<AuthRepo>(AuthRepoImpl(resolve(), resolve()));
    _getIt.registerSingleton(LoginUseCase(resolve()));
  }

  static T resolve<T extends Object>() => _getIt.get();
}
