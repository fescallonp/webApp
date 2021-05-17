import 'package:flutter/material.dart';

import 'Doctores/IngresoDoctores.dart';
import 'home.dart';
import 'Doctores/InicioDoctores.dart';
import 'Doctores/PerfilPaciente.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'DolorApp',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(),
        routes: {
          Home.routeName: (ctx) => Home(),
          IngresoDoctores.routeName: (ctx) => IngresoDoctores(),
          InicioDoctores.routeName: (ctx) => InicioDoctores(),
          PerfilPaciente.routeName: (ctx) => PerfilPaciente(),
        });
  }
}
