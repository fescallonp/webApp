import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_sparkline/flutter_sparkline.dart';

//
class PerfilPaciente extends StatefulWidget {
  static const routeName = '/Perfil_Paciente';
  @override
  _PerfilPaciente createState() => _PerfilPaciente();
}

//
class DolorPaciente {
  int tiempo;
  int dolor;

  DolorPaciente(this.tiempo, this.dolor);
}

//
class _PerfilPaciente extends State<PerfilPaciente> {
  List<charts.Series<DolorPaciente, int>> _seriesLineData;
  _generateData() {
    var linesalesdata = [
      new DolorPaciente(6, 0),
      new DolorPaciente(9, 2),
      new DolorPaciente(12, 5),
      new DolorPaciente(15, 3),
      new DolorPaciente(18, 10),
      new DolorPaciente(21, 2),
      new DolorPaciente(24, 0)
    ];

    final sombra = charts.MaterialPalette.blue.makeShades;

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0XFF990099)),
        id: 'Dolor',
        data: linesalesdata,
        domainFn: (DolorPaciente sales, _) => sales.tiempo,
        measureFn: (DolorPaciente sales, _) => sales.dolor,
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesLineData = List<charts.Series<DolorPaciente, int>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Stack(children: [
        Positioned(
            top: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width,
              color: Color(0XFF51C7F6),
              child: Center(
                child: Text('Pugnatum Dolore', style: TextStyle(fontSize: 35)),
              ),
            )),
        // Grafica de dolor.
        Positioned(
            top: MediaQuery.of(context).size.height * 0.12,
            left: MediaQuery.of(context).size.width * 0.51,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.85,
              width: MediaQuery.of(context).size.width * 0.48,
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
                  color: Colors.white),
              child: Column(children: <Widget>[
                Text(
                  'Grafica de dolor vs tiempo',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                Expanded(
                    child: charts.LineChart(_seriesLineData,
                        defaultRenderer: new charts.LineRendererConfig(
                            stacked: true, includePoints: true),
                        animate: true,
                        animationDuration: Duration(seconds: 5),
                        behaviors: [
                      new charts.ChartTitle('Horario 24 horas',
                          behaviorPosition: charts.BehaviorPosition.bottom,
                          titleOutsideJustification:
                              charts.OutsideJustification.middleDrawArea),
                      new charts.ChartTitle('Dolor',
                          behaviorPosition: charts.BehaviorPosition.start,
                          titleOutsideJustification:
                              charts.OutsideJustification.middleDrawArea),
                    ]))
              ]),
            )),
        //Mayor información paciente
        Positioned(
            top: MediaQuery.of(context).size.height * 0.12,
            left: MediaQuery.of(context).size.width * 0.001,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.28,
              width: MediaQuery.of(context).size.width * 0.50,
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
                  color: Colors.white),
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
                        child: Image.asset('DavidSolorzano.jpeg',
                            alignment: Alignment.topLeft,
                            scale: 2,
                            fit: BoxFit.fill),
                      ),
                    ), //Nombre
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.12,
                      child: Text('David Solorzano',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            height: 2.0,
                          )),
                    ),
                    //Procedimiento
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.12,
                      child: Text('Edad: 22',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            height: 4.5,
                          )),
                    ),
                    //Fecha intervención.
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.12,
                      child: Text('Altura: 175 cms',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            height: 6.5,
                          )),
                    ),
                    //Lugar de intervención
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.12,
                      child: Text('Medicamentos recetados: 4',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            height: 8.5,
                          )),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.12,
                      child: Text('Ultima medición reportada: 0',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            height: 10.5,
                          )),
                    )
                  ])),
            )),
        //Recuadro medicamentos
        Positioned(
          top: MediaQuery.of(context).size.height * 0.45,
          left: MediaQuery.of(context).size.width * 0.002,
          //Recuadro enorme de los medicamentos.
          child: Container(
              height: MediaQuery.of(context).size.height * 0.52,
              width: MediaQuery.of(context).size.width * 0.50,
              // Permtie ver la lista de medicamentos que hay en el momento.
              child: ListView(
                children: [
                  medicamentos(
                    '1.jpg',
                    'Ibuprofeno',
                    'Frecuencia: Cada 6 horas',
                    'Cantidad recetada: 500 mg',
                  ),
                  medicamentos(
                    '3.jpg',
                    'Acetaminofen',
                    'Frecuencia: Cada 8 horas',
                    'Cantidad recetada: 500 mg',
                  ),
                  medicamentos(
                    '4.jpg',
                    'Olanzapina',
                    'Frecuencia: Cada 8 horas',
                    'Cantidad recetada: 2,5 mg',
                  )
                ],
                scrollDirection: Axis.vertical,
              ),
              //Decoración caja enorme de medicamentos.
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                      bottomLeft: Radius.circular(40)),
                  //Sombras ficha medicamentos.
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black45,
                        offset: Offset(4, 4),
                        blurRadius: 4)
                  ],
                  color: Colors.white)),
        ),
        //Titulo medicamentos recetados.
        Positioned(
            top: MediaQuery.of(context).size.height * 0.48,
            left: MediaQuery.of(context).size.width * 0.14,
            child: Align(
                alignment: Alignment(0.5, 0.5),
                child: Text('Medicamentos recetados',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold))))
      ]),
    ));
  }

  // Función medicamentos
  Widget medicamentos(
    String imagen,
    String nombreMedicamento,
    String frecuencia,
    String dosis,
  ) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width * 0.45,
        child: (Stack(
          // Container para la foto del medicamento.
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.15,
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
              left: MediaQuery.of(context).size.width * 0.16,
              child: Text(nombreMedicamento,
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
              left: MediaQuery.of(context).size.width * 0.16,
              child: Text(frecuencia,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    height: 4.5,
                  )),
            ),
            //dosis medicamento.
            Positioned(
              left: MediaQuery.of(context).size.width * 0.16,
              child: Text(dosis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    height: 6.5,
                  )),
            ),
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
}
