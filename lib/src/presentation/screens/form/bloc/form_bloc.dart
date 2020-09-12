import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:form_test/src/presentation/screens/form/repository/form_repository.dart';

part 'form_state.dart';

part 'form_event.dart';

class FormBloc extends Bloc<FormEvent, FormState> {
  FormRepository _formRepository;

  FormBloc({FormRepository formRepository})
    : assert(formRepository != null),
    _formRepository = formRepository,
    super(InitialFormState());

  @override
  Stream<FormState> mapEventToState(FormEvent event) async* {
    switch(event.runtimeType){

    }
  }
}