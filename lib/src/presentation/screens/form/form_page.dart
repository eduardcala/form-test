import 'package:flutter/material.dart';
import 'package:form_test/src/presentation/screens/form/bloc/form_bloc.dart';
import 'package:form_test/src/presentation/screens/form/repository/form_repository.dart';

class FormPage extends StatefulWidget {
  static const routeName = "form.page";
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  FormBloc formBloc;

  @override
  void initState() {
    formBloc = FormBloc(formRepository: FormRepository());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        title: Text("Formulario"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              TextField(
                  decoration: const InputDecoration(
                    hintText: 'Ingrese un nombre',
                  )
              ),
              TextField(
                  maxLines: 8,
                  decoration: const InputDecoration(
                    hintText: 'Descripción',
                  )
              ),
              ListTile(
                title: const Text('Opción 1'),
                leading: Radio(
                  value: 1,
                  groupValue: 1,
                  onChanged: (val) => null,
                ),
              ),
              ListTile(
                title: const Text('Opción 2'),
                leading: Radio(
                  value: 2,
                  groupValue: 1,
                  onChanged: (val) => null,
                ),
              ),
              CheckboxListTile(
                  value: true,
                  title: Text("Opción 1"),
                  onChanged: null
              ),
              CheckboxListTile(
                  value: true,
                  title: Text("Opción 2"),
                  onChanged: null
              ),
              FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () => null,
                child: Text(
                  "Guardar",
                  style: TextStyle(fontSize: 20.0),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}