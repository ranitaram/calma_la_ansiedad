import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_46.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio46 extends StatefulWidget {
  @override
  State<Desafio46> createState() => _Desafio46State();
}

class _Desafio46State extends State<Desafio46> {
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
              Color.fromARGB(255, 75, 73, 73),
              Color.fromARGB(255, 185, 211, 211),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 46',
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
              'Lleva la atención consciente a la forma de conducir. Nota todos los movimientos del cuerpo, los movimientos del coche, los sonidos, los patrones de hábitos, y los pensamientos involucrados en el manejo.',
              color: Colors.black,
            ),
            ParrafoGrande(
              '(Si no conduces, puedes llevar la atención a andar en bicicleta o a ser pasajero en un coche, un autobús o un tren).',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.faceSadCry,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate46()));
                }),
          ],
        ),
      ),
    );
  }
}
