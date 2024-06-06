import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(const AuthenticationState()) {
    on<OnChangeEstadoAuth>((event, emit) {
      switch (event.value) {
        case "Estudiante":
          emit(state.copyWith(estadoAuth: EstadoAuth.estudiante));
          break;
        case "Apoderado":
          emit(state.copyWith(estadoAuth: EstadoAuth.apoderado));
          break;
        case "Profesor":
          emit(state.copyWith(estadoAuth: EstadoAuth.maestro));
          break;
        default:
          emit(state.copyWith(estadoAuth: EstadoAuth.chofer));
          break;
      }
    });
  }
}
