import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Doctores/IngresoDoctores.dart';

class Home extends StatefulWidget {
  static const routeName = '/Pagina_Inicio';
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
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
                                onPressed: () {},
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
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed(IngresoDoctores.routeName);
                                  },
                                  child: Text('Ingreso Doctores',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black)))
                            ],
                          ))
                    ],
                  )),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.11,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width,
                //Color(0xFF CODIGO HEX)
                child: Stack(
                  children: [
                    Positioned(
                        child: ClipRRect(
                            child: Image.asset(
                      'MedicoFinal.jpg',
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.9,
                      fit: BoxFit.cover,
                    ))),
                    Positioned(
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.8,
                            color: Colors.black.withOpacity(0.35))),
                    Positioned(
                        top: MediaQuery.of(context).size.height * 0.4,
                        left: MediaQuery.of(context).size.height * 0.2,
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.4,
                            child: Text('',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
