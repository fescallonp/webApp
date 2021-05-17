import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'PerfilPaciente.dart';

class InicioDoctores extends StatefulWidget {
  static const routeName = '/Inicio_Doctores';
  @override
  _InicioDoctores createState() => _InicioDoctores();
}

class _InicioDoctores extends State<InicioDoctores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Stack(children: [
            //Pugantum dolore.
            Positioned(
                top: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0XFF51C7F6),
                  child: Center(
                    child:
                        Text('Pugnatum Dolore', style: TextStyle(fontSize: 35)),
                  ),
                )),
            //Perfil médico.
            Positioned(
                top: MediaQuery.of(context).size.height * 0.12,
                bottom: MediaQuery.of(context).size.height * 0.02,
                left: MediaQuery.of(context).size.width * 0.01,
                child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * 0.25,
                    //Bordes ficha médica.
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                            topLeft: Radius.circular(40),
                            bottomLeft: Radius.circular(40)),
                        //Sombras ficha médica.
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black45,
                              offset: Offset(5, 5),
                              blurRadius: 5)
                        ],
                        color: Color(0XFFC5ECFC)),
                    //Contenido ficha médica.
                    // MainAxis para cosas horizontales, CrossAxis cosas verticales.
                    child: Stack(
                      children: [
                        Positioned(
                            top: MediaQuery.of(context).size.height * 0.14,
                            left: MediaQuery.of(context).size.width * 0.065,
                            child: Container(
                                //Foto médico.
                                height:
                                    MediaQuery.of(context).size.height * 0.30,
                                width:
                                    MediaQuery.of(context).size.width * 0.125,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('Fede.jpeg'),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                        color: Colors.white, width: 1)))),
                        // Ubicación titulo especialidad.
                        Positioned(
                            top: MediaQuery.of(context).size.height * 0,
                            child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.1125,
                                width: MediaQuery.of(context).size.width * 0.25,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(40),
                                        topLeft: Radius.circular(40)),
                                    color: Color(0XFF054761)),
                                child: Text('Médico general',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 28,
                                      color: Colors.white,
                                      height: 2,
                                    )))),
                        //Ralla superior.
                        Positioned(
                            top: MediaQuery.of(context).size.height * 0.48,
                            child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                                width: MediaQuery.of(context).size.width * 0.25,
                                color: Color(0XFF054761))),
                        // Información médico.
                        //  Espacio en blanco inferior.
                        Positioned(
                            top: MediaQuery.of(context).size.height * 0.49,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.37,
                              width: MediaQuery.of(context).size.width * 0.25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(40),
                                      bottomLeft: Radius.circular(40)),
                                  color: Colors.white),
                            )),
                        //Nombre médico.
                        Positioned(
                            top: MediaQuery.of(context).size.height * 0.53,
                            child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                                width: MediaQuery.of(context).size.width * 0.25,
                                child: Text('Federico Calderon',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 26,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      height: 2,
                                    )))),
                        Positioned(
                            top: MediaQuery.of(context).size.height * 0.60,
                            child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                                width: MediaQuery.of(context).size.width * 0.25,
                                child: Text('ID:1010456987',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.black,
                                      height: 1.5,
                                    )))),
                        Positioned(
                            top: MediaQuery.of(context).size.height * 0.72,
                            child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                                width: MediaQuery.of(context).size.width * 0.25,
                                child: Text('Pacientes activos: 3',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 26,
                                      color: Colors.black,
                                      height: 1.5,
                                    )))),
                      ],
                      //Fin ventana médico.
                    ))),
            //Ventana pacientes.
            Positioned(
              top: MediaQuery.of(context).size.height * 0.13,
              bottom: MediaQuery.of(context).size.height * 0.02,
              right: MediaQuery.of(context).size.width * 0.0125,
              left: MediaQuery.of(context).size.width * 0.28,
              //Recuadro enorme de los pacientes.
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width * 0.75,
                  // Permtie ver la lista de pacientes que hay en el momento.
                  child: ListView(
                    children: [
                      pacientes(
                          'David Solórzano',
                          'Procedimiento: Sutura meniscal',
                          'Fecha de intervencion: 23/2/21',
                          'Lugar intervención: Fundación Santa fe',
                          'DavidSolorzano.jpeg',
                          false,
                          true,
                          'Ampliar información'),
                      const SizedBox(height: 1),
                      pacientes(
                          'David Arias',
                          'Procedimiento: Reemplazo de rodilla derecha',
                          'Fecha de intervencion: 18/3/21',
                          'Lugar intervención: Clinica Marly',
                          'Arias.jpeg',
                          false,
                          true,
                          'Ampliar información'),
                      const SizedBox(height: 1),
                      pacientes(
                          'Nicolás Yanguma',
                          'Procedimiento: Reemplazo de cadera',
                          'Fecha de intervencion: 25/1/21',
                          'Lugar intervención: Clinica Méredi',
                          'NicolasYanguma.jpeg',
                          true,
                          false,
                          'Ampliar información'),
                      const SizedBox(height: 1),
                      pacientes(
                          'Felipe Escallon',
                          'Procedimiento: Reconstrucción LCA ',
                          'Fecha de intervencion: 28/3/21',
                          'Lugar intervención: Hospital Militar',
                          'Felipe.jpg',
                          false,
                          true,
                          'Ampliar información')
                    ],
                    scrollDirection: Axis.vertical,
                  ),
                  //Decoración caja enorme de pacientes.
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                          topLeft: Radius.circular(40),
                          bottomLeft: Radius.circular(40)),
                      //Sombras ficha pacientes.
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black45,
                            offset: Offset(4, 4),
                            blurRadius: 4)
                      ],
                      color: Color(0XFFECF9FE))),
            ),
            //Titulo mis pacientes
            Positioned(
              top: MediaQuery.of(context).size.height * 0.155,
              left: MediaQuery.of(context).size.width * 0.325,
              child: Align(
                alignment: Alignment(1.00, 1.00),
                child: Text('Mis pacientes',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ),
            ),
            //Buscador
            Positioned(
                top: MediaQuery.of(context).size.height * 0.15,
                left: MediaQuery.of(context).size.width * 0.47,
                child: SafeArea(
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.47,
                        child: CupertinoSearchTextField(
                            onChanged: (value) {},
                            style: TextStyle(color: Colors.black))))),
          ])),
    );
  }

  Widget pacientes(
    String nombre,
    String procedimiento,
    String fechaIntervencion,
    String lugarProcedimiento,
    String imagen,
    bool color1,
    bool color2,
    String botonInformacion,
  ) {
    return Container(
        height: 200,
        width: MediaQuery.of(context).size.width * 0.65,
        child: (Stack(
          // Container para la foto del paciente.
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.09,
              height: MediaQuery.of(context).size.height,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomLeft: Radius.circular(25)),
                child: Image.asset(imagen,
                    alignment: Alignment.topLeft, scale: 2, fit: BoxFit.fill),
              ),
            ),
            //Nombre
            Positioned(
              left: MediaQuery.of(context).size.width * 0.13,
              child: Text(nombre,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 2.0,
                  )),
            ),
            //Procedimiento
            Positioned(
              left: MediaQuery.of(context).size.width * 0.13,
              child: Text(procedimiento,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    height: 4.5,
                  )),
            ),
            //Fecha intervención.
            Positioned(
              left: MediaQuery.of(context).size.width * 0.13,
              child: Text(fechaIntervencion,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    height: 6.5,
                  )),
            ),
            //Lugar de intervención
            Positioned(
              left: MediaQuery.of(context).size.width * 0.13,
              child: Text(lugarProcedimiento,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    height: 8.5,
                  )),
            ),
            //Ralla divisoria 2
            Positioned(
              left: MediaQuery.of(context).size.width * 0.45,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.005,
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
              ),
            ),
            //Color estado
            Positioned(
              top: MediaQuery.of(context).size.height * 0.025,
              left: MediaQuery.of(context).size.width * 0.105,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.025,
                height: MediaQuery.of(context).size.height * 0.025,
                decoration: BoxDecoration(
                    color: obtenerColor(color1, color2),
                    shape: BoxShape.circle),
              ),
            ),
            //Botón de información.
            Positioned(
                left: MediaQuery.of(context).size.width * 0.465,
                top: MediaQuery.of(context).size.height * 0.07,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0XFF8BDCF9),
                      //(Ancho, alto)
                      minimumSize: Size(75, 85),
                      side: BorderSide(width: 0.5, color: Colors.white)),
                  onPressed: () {
                    Navigator.of(context).pushNamed(PerfilPaciente.routeName);
                  },
                  child: Text(botonInformacion,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                ))
          ],
          //otras cosas del container grandote
        )),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
                topLeft: Radius.circular(25),
                bottomLeft: Radius.circular(25)),
            color: Color(0XFF076388)),
        margin: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1));
  }

  Color obtenerColor(bool esRojo, bool esVerde) {
    Color color;
    if (esRojo == true) {
      color = Colors.red;
    } else if (esVerde == true) {
      color = Colors.green;
    }
    return color;
  }
}
