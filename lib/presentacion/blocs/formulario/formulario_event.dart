part of 'formulario_bloc.dart';

sealed class FormularioEvent extends Equatable {
  const FormularioEvent();

  @override
  List<Object> get props => [];
}

class FormularioEventInit extends FormularioEvent {}
