import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_20.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio20 extends StatefulWidget {
  @override
  State<Desafio20> createState() => _Desafio20State();
}

class _Desafio20State extends State<Desafio20> {
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
              Color.fromARGB(255, 29, 162, 115),
              Color.fromARGB(255, 118, 56, 138),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 20',
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
              'En este desafío décimos sí a todos y a todo lo que sucede. Cuando sientes el impulso de estar en desacuerdo, considera sí es realmente necesario. ¿Podrías simplemente asentir,',
              color: Colors.white,
            ),

            ParrafoGrande(
              'o incluso estar en silencio pero conforme? Siempre que no sea peligroso para ti o para otros, acepta a los demás y lo que está sucediendo en tu vida.',
              color: Colors.white,
            ),
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
                icon: FontAwesomeIcons.stripeS,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate20()));
                }),
          ],
        ),
      ),
    );
  }
}
