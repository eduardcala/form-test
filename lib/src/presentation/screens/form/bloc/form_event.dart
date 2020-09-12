part of'form_bloc.dart';

abstract class FormEvent extends Equatable{

  const FormEvent();
  @override
  List<Object> get props => [];

  @override
  bool get stringify => true;

}
class GetDiscoverEvent extends FormEvent{}