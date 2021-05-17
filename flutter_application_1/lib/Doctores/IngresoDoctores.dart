import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Home.dart';
import 'InicioDoctores.dart';

class IngresoDoctores extends StatefulWidget {
  static const routeName = '/Ingreso_Doctores';
  @override
  _IngresoDoctores createState() => _IngresoDoctores();
}

class _IngresoDoctores extends State<IngresoDoctores> {
  bool laContrenaEstaOculta = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        //Stack me permite superponer cosas
        // Si no le especifico las posiciones todo lo pone encima entre si.
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0XFF51C7F6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Pugnatum Dolore',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(Home.routeName);
                                },
                                child: Text('Inicio',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black)),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text('Sobre Nosotros',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black))),
                              TextButton(
                                  onPressed: () {},
                                  child: Text('Nuestros Servicios',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black))),
                              TextButton(
                                  onPressed: () {},
                                  child: Text('Dolor App',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black))),
                              TextButton(
                                  onPressed: () {},
                                  child: Text('Ingreso Doctores',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black)))
                            ],
                          ))
                    ],
                  )),
            ),
            //Imagen grande de fondo
            Positioned(
              top: MediaQuery.of(context).size.height * 0.11,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.95,
                width: MediaQuery.of(context).size.width,
                //Color(0xFF CODIGO HEX)
                child: Stack(
                  children: [
                    Positioned(
                        child: ClipRRect(
                            child: Image.asset(
                      'Pasillo.jpg',
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit.cover,
                    ))),
                    Positioned(
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            color: Colors.white.withOpacity(0.40))),
                    Positioned(
                        top: MediaQuery.of(context).size.height * 0.18,
                        left: MediaQuery.of(context).size.width * 0.08,
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.35,
                            height: MediaQuery.of(context).size.height * 0.1,
                            child: Text('¡Bienvenido!',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 30, color: Colors.black)))),
                    Positioned(
                        top: MediaQuery.of(context).size.height * 0.25,
                        left: MediaQuery.of(context).size.width * 0.08,
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: MediaQuery.of(context).size.height * 0.4,
                            child: Text(
                                'Eres uno de esos especialistas que ha sido consciente sobre la importancia de cambiar la forma de como se realiza el monitoreo del proceso de recuperación de tus pacientes posoperatorios. Inicia sesión ahora mismo para conocer su estado y observar su evolución.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black)))),
                    Positioned(
                        top: MediaQuery.of(context).size.height * 0.40,
                        left: MediaQuery.of(context).size.width * 0.08,
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.055,
                            child: TextField(
                              keyboardType: (TextInputType.text),
                              style: TextStyle(fontSize: 18),
                              //Decoración
                              decoration: InputDecoration(
                                hintText: 'Usuario',
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(),
                              ),
                            ))),
                    // Contraseña inicio de sesión médicos.
                    Positioned(
                        top: MediaQuery.of(context).size.height * 0.47,
                        left: MediaQuery.of(context).size.width * 0.08,
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.055,
                            child: TextField(
                              style: TextStyle(fontSize: 18),
                              obscureText: laContrenaEstaOculta,
                              //Decoración
                              decoration: InputDecoration(
                                hintText: 'Contraseña',
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(),
                                suffixIcon: InkWell(
                                  onTap: _togglePasswordView,
                                  child: Icon(Icons.visibility),
                                ),
                              ),
                            ))),
                    // Boton para inicio de sesión.
                    Positioned(
                        top: MediaQuery.of(context).size.height * 0.55,
                        left: MediaQuery.of(context).size.width * 0.08,
                        child: TextButton(
                          //Estilo del butón, tamaño, color de fondo
                          style: TextButton.styleFrom(
                              minimumSize: Size(140, 20),
                              backgroundColor: Colors.white,
                              side: BorderSide(width: 1, color: Colors.white)),
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(InicioDoctores.routeName);
                          },
                          child: Text('Iniciar sesión',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              )),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _togglePasswordView() {
    if (laContrenaEstaOculta == true) {
      laContrenaEstaOculta = false;
    } else {
      laContrenaEstaOculta = true;
    }
    setState(() {});
  }
}
