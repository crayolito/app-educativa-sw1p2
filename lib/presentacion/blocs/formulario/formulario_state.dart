part of 'formulario_bloc.dart';

sealed class FormularioState extends Equatable {
  const FormularioState();
  
  @override
  List<Object> get props => [];
}

final class FormularioInitial extends FormularioState {}
