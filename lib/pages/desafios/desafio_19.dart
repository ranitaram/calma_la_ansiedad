import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_19.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio19 extends StatefulWidget {
  @override
  State<Desafio19> createState() => _Desafio19State();
}

class _Desafio19State extends State<Desafio19> {
  late double _deviceHeight;
  late double _deviceWidth;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return _buildUI();
  }

  _buildUI() {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: _deviceWidth * 0.03,
          vertical: _deviceHeight * 0.02,
        ),
        height: _deviceHeight,
        width: _deviceWidth,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
              Color.fromARGB(255, 161, 81, 236),
              Color.fromARGB(255, 204, 235, 5),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 19',
              primaryAction: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),

            // Parrafo('', color: Colors.black,),
            ParrafoGrande(
              'Varias veces por día relaja las manos por completo. Al menos durante unos segundos, déjalas completamente quietas. Una forma de hacerlo, es ponerlas en tus piernas y concentrar tu ',
              color: Colors.black,
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            Parrafo(
              'conciencia en las sutiles sensaciones en las manos inmóviles.',
              color: Colors.black,
            ),

            // ParrafoGrande(
            //   'si no hay árboles cerca de dónde vives, puedes ver cualquier tipo de vegetación. Toma conciencia de que los árboles están respirando. Lo que exhalan (oxígeno), nosotros inhalamos.',
            //   color: Colors.white,
            // ),
            // ParrafoGrande(
            //   'Puedes buscar tus tareas en internet y hacer tus investigaciones, pero evita a toda costa las noticias. Parte de este desafío de estar presente es encontrar alternativas al consumo de medios.',
            //   color: Colors.white,
            // ),
            // Parrafo(
            //   'Lo que exhalamos (dióxido de carbono), ellos inhalan.',
            //   color: Colors.white,
            // ),

            // Parrafo(
            //   'presta atención a los olores y los sabores.',
            //   color: Colors.black,
            // ),

            BotonGordo(
                icon: FontAwesomeIcons.handSparkles,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate19()));
                }),
          ],
        ),
      ),
    );
  }
}
