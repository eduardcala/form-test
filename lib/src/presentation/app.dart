import 'package:flutter/material.dart';
import 'package:form_test/src/presentation/screens/form/form_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: FormPage.routeName,
      routes: {
        FormPage.routeName: (context) => FormPage(),
      },
    );
  }
}