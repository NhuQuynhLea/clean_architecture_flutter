import 'dart:async';

abstract class BaseUseCase<T>{
  const BaseUseCase();
}

abstract class UseCase<T,P> extends BaseUseCase<T> {
  const UseCase():super();
  Future<T> call(P params);
}

abstract class NoParamsUseCase<T,P> extends BaseUseCase<T> {
  const NoParamsUseCase():super();
  Future<T> call();
}