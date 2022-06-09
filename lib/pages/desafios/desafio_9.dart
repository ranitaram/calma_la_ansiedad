import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_9.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/top_bar.dart';

class Desafio9 extends StatefulWidget {
  @override
  State<Desafio9> createState() => _Desafio9State();
}

class _Desafio9State extends State<Desafio9> {
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
              Color.fromARGB(255, 5, 76, 99),
              Color.fromARGB(255, 228, 57, 208),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 9',
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
              'En el transcurso del día detente y solo oye, escucha los sonidos sutiles en tu cuerpo, en el cuarto, en tu trabajo o donde te encuentres, escucha como si fuera la primera vez y no supieras de donde vienen',
              color: Colors.white,
            ),
            Parrafo(
              'esos sonidos, intenta oír todos los sonidos.',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.earlybirds,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate9()));
                }),
          ],
        ),
      ),
    );
  }
}
