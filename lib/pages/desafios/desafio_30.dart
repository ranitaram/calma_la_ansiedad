import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_30.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio30 extends StatefulWidget {
  @override
  State<Desafio30> createState() => _Desafio30State();
}

class _Desafio30State extends State<Desafio30> {
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
              Color.fromARGB(255, 237, 28, 5),
              Color.fromARGB(255, 96, 157, 241),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 30',
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
              'Toma conciencia de cómo te defines y te defiendes a ti y a tu territorio personal. Por ejemplo, ¿te consideras un liberal o un conservador? ¿Cómo defiendes esa posición?',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Controla este proceso varias veces por día. En particular, cuando te sientas irritado y molesto, pregúntate: “¿Cómo me estoy definiendo a mí mismo o a mi territorio personal en este momento?”',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.dragon,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate30()));
                }),
          ],
        ),
      ),
    );
  }
}
