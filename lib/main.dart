import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:form_test/src/core/bloc/bloc_observer.dart';
import 'package:form_test/src/presentation/app.dart';


void main() {
  Bloc.observer = FormBlocObserver();
  runApp(App());
}

