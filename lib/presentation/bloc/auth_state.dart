part of 'auth_bloc.dart';

class AuthState extends Equatable {
  final bool authLoading;
  final String authError;
  final String result;

  const AuthState({required this.result,required this.authError,required this.authLoading});
  factory AuthState.init() => const AuthState(
      result: "",
      authError: "",
      authLoading: false,
  );

  AuthState copyWith(
  {bool? authLoading, String? authError, String? result}) =>
      AuthState(
          result: result ?? this.result,
          authError: authError ?? this.authError,
          authLoading: authLoading ?? this.authLoading);

  @override
  List<Object?> get props => [authLoading,authError,result];
}

