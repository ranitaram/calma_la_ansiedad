import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_40.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio40 extends StatefulWidget {
  @override
  State<Desafio40> createState() => _Desafio40State();
}

class _Desafio40State extends State<Desafio40> {
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
              Color.fromARGB(255, 137, 142, 136),
              Color.fromARGB(255, 20, 72, 68),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 40',
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
              'Esta semana, lleva la atención a las señales de envejecimiento en ti, en otras personas, en los animales y las plantas, y hasta en los objetos inanimados. ¿Cómo sabemos que algo está envejeciendo?',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.oldRepublic,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate40()));
                }),
          ],
        ),
      ),
    );
  }
}
