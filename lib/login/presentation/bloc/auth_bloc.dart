import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/usecase/auth_usecase_impl.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase _loginUseCase;
  AuthBloc(this._loginUseCase) : super(AuthState.init()) {
    on<AuthLoginEvent>(_onAuthLogin);
  }

  FutureOr<void> _onAuthLogin(
      AuthLoginEvent event, Emitter<AuthState> emitter) async {
    emitter(state.copyWith(authLoading: true, authError: "", result: ""));
    final res = await _loginUseCase
        .call({"email": event.email, "password": event.password});
    res.fold(
          (l) {
            print(l);
        emitter(state.copyWith(authLoading: false, authError: l));
      },
          (r) {
        print(r);
        emitter(state.copyWith(authLoading: false, result: r.accessToken));
      },
    );

  }
}
