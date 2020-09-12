part of 'form_bloc.dart';

abstract class FormState extends Equatable{
  const FormState();
  @override
  List<Object> get props => [];

  @override
  bool get stringify => true;
}

class InitialFormState extends FormState{}