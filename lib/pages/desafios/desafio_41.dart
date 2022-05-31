import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_41.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio41 extends StatefulWidget {
  @override
  State<Desafio41> createState() => _Desafio41State();
}

class _Desafio41State extends State<Desafio41> {
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
              Color.fromARGB(255, 211, 47, 47),
              Color.fromARGB(255, 99, 74, 22),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 41',
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
              'Durante una semana, trabaja en ser puntual en todos los eventos. Considera que “ser puntual” es importante para ti y para los otros. Observa lo que te impide ser puntual,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'y lo que surge en la mente cuando tú u otra persona llegan tarde. (Si eres una persona que siempre es puntual, podrías tratar de llegar unos minutos tarde y ver qué sucede, externa e internamente.)',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.userClock,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate41()));
                }),
          ],
        ),
      ),
    );
  }
}
