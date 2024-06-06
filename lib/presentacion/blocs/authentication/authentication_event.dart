part of 'authentication_bloc.dart';

class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class OnChangeEstadoAuth extends AuthenticationEvent {
  final String value;
  const OnChangeEstadoAuth(this.value);
}
