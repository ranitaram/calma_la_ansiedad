import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_45.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio45 extends StatefulWidget {
  @override
  State<Desafio45> createState() => _Desafio45State();
}

class _Desafio45State extends State<Desafio45> {
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
              Color.fromARGB(255, 147, 57, 57),
              Color.fromARGB(255, 14, 152, 92),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 45',
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
              'Toma conciencia de la ansiedad. Nota todas las sensaciones del cuerpo, las emociones y los pensamientos asociados con la ansiedad. ¿El corazón se acelera? ¿Los pensamientos se aceleran?',
              color: Colors.white,
            ),
            ParrafoGrande(
                'Nota cuando la ansiedad hace su primera aparición en el día. ¿Aparece cuándo bebes café, cuando miras las noticias, o cuando llegas a la escuela o el trabajo? Varias veces por día,'),
            ParrafoGrande(
              'haz una pausa breve para evaluar si la ansiedad está presente en ti. Quizás puedas notar también qué empeora la ansiedad y qué la alivia.',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.faceSadCry,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate45()));
                }),
          ],
        ),
      ),
    );
  }
}
