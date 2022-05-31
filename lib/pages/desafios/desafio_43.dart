import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_43.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio43 extends StatefulWidget {
  @override
  State<Desafio43> createState() => _Desafio43State();
}

class _Desafio43State extends State<Desafio43> {
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
              Color.fromARGB(255, 146, 230, 10),
              Color.fromARGB(255, 225, 166, 18),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 43',
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
              'Durante una semana, mientras comes o bebes, toma conciencia de la lengua. Cuando notes que tu mente divaga durante una comida, vuélvela a la conciencia de la lengua. Ayuda hacer preguntas como:',
              color: Colors.black,
            ),
            ParrafoGrande(
              '“¿Qué está haciendo o sintiendo mi lengua en este preciso instante?” Toma conciencia de las experiencias cambiantes de temperatura, textura, sabor y picante.',
              color: Colors.black,
            ),
            Parrafo(
              '¿Dónde siente los distintos sabores de un modo más preciso? ¿Cómo se mueve tu lengua?',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.wineGlass,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate43()));
                }),
          ],
        ),
      ),
    );
  }
}
