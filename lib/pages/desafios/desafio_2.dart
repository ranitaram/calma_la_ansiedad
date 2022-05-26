import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_2.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/top_bar.dart';

class Desafio2 extends StatefulWidget {
  @override
  State<Desafio2> createState() => _Desafio2State();
}

class _Desafio2State extends State<Desafio2> {
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
                colors: [Colors.green, Colors.purple])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 2',
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
              'Escoge un área de tu casa y por una semana no dejes rastro que has estado ahí,',
              color: Colors.black,
            ),
            Parrafo(
              'esta puede ser la cocina, tu cuarto o el baño, son solo unos ejemplos, ',
              color: Colors.black,
            ),
            Parrafo(
              'y si has estado en esa área debes de dejar limpio de tal modo que no dejes señales de que la has utilizado.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.ghost,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate2()));
                }),
          ],
        ),
      ),
    );
  }
}
