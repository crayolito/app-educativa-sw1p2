import 'package:app_p2sw1/presentacion/features/home/domain/entities/auth.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(const AuthenticationState()) {
    on<OnChangeEstadoAuth>((event, emit) {
      switch (event.value) {
        case "Puntos Alojamiento":
          emit(state.copyWith(estadoAuth: EstadoAuth.alojamiento));
          break;
        case "Atracciones Turisticas":
          emit(state.copyWith(estadoAuth: EstadoAuth.turismo));
          break;
        case "Centros de Vuelos":
          emit(state.copyWith(estadoAuth: EstadoAuth.turismo));
          break;
      }
    });
    on<OnProcessFormAuthUser>((event, emit) {
      AuthUser authUser =
          AuthUser(id: 1, email: event.email, password: "clave123");
      emit(state.copyWith(authUser: authUser));
      // ignore: avoid_print
      print({
        "email": state.authUser!.email,
        "password": state.authUser!.password,
      });
    });
  }
}
