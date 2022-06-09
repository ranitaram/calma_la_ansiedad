import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_42.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio42 extends StatefulWidget {
  @override
  State<Desafio42> createState() => _Desafio42State();
}

class _Desafio42State extends State<Desafio42> {
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
              Color.fromARGB(255, 5, 106, 230),
              Color.fromARGB(255, 118, 175, 210),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 42',
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
              'Toma conciencia de la procrastinación, el acto de posponer algo que debe hacerse. Sé consciente tanto del deseo de procrastinar como de lo que haces al respecto, es decir,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'tu método para demorar las cosas. Observa con más claridad qué te lleva a la procrastinación, y ve qué estrategias funcionan para modificar el resultado.',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.gamepad,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate42()));
                }),
          ],
        ),
      ),
    );
  }
}
