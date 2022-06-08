import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_1.dart';

import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/top_bar.dart';

class Desafio1 extends StatefulWidget {
  @override
  State<Desafio1> createState() => _Desafio1State();
}

class _Desafio1State extends State<Desafio1> {
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
                colors: [Colors.red, Colors.blue])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 1',
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
            Parrafo(
              'Usa tu mano menos capaz para algunas tareas comunes de todos los días.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Estas podrían ser cepillarte los dientes, peinarte o comer con la mano no dominante. Si estás preparado para un gran desafío, trata de usar la mano no dominante cuando escribes.',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.angellist,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate1()));
                }),
          ],
        ),
      ),
    );
  }
}
