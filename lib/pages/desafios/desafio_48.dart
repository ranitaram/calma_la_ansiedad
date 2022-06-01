import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_48.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio48 extends StatefulWidget {
  @override
  State<Desafio48> createState() => _Desafio48State();
}

class _Desafio48State extends State<Desafio48> {
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
              Color.fromARGB(255, 230, 14, 14),
              Color.fromARGB(255, 233, 207, 6),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 48',
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
            ParrafoGrande(
              'Expande tu conciencia de la luz en todas sus formas, brillante y apagada, directa y reflejada. Este ejercicio es un maravilloso ejemplo de cómo estar presente nos ayuda a ver lo que hemos aprendido a ignorar.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'En el mundo moderno damos por sentada la luz; sin embargo, antes de que la electricidad estuviera disponible para nuestro uso común en la segunda mitad del siglo XX, la luz era preciosa, hasta sagrada.',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.sun,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate48()));
                }),
          ],
        ),
      ),
    );
  }
}
