part of 'authentication_bloc.dart';

enum EstadoAuth { ninguno, apoderado, chofer, maestro, estudiante }

class AuthenticationState extends Equatable {
  final EstadoAuth estadoAuth;

  const AuthenticationState({this.estadoAuth = EstadoAuth.ninguno});

  AuthenticationState copyWith({EstadoAuth? estadoAuth}) =>
      AuthenticationState(estadoAuth: estadoAuth ?? this.estadoAuth);

  @override
  List<Object> get props => [
        estadoAuth,
      ];
}
