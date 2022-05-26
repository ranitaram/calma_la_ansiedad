import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/top_bar.dart';

class Descubrimiento6 extends StatefulWidget {
  @override
  State<Descubrimiento6> createState() => _Descubrimiento6State();
}

class _Descubrimiento6State extends State<Descubrimiento6> {
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
              Color.fromARGB(255, 225, 247, 79),
              Color.fromARGB(255, 237, 32, 70),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              '¿Qué aprendimos?',
              fontSize: 25,
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
              'Puede ser difícil cumplir, esté desafío ya al que al principio quizá sientas que no te escuches muy sincero, pero al cabo de hacerlo continuamente te darás cuenta de las cosas que podrías haber estado agradecido,',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'pero antes tenías una postura de crítica que solo notaba los problemas. También te darás cuenta que algunas personas te bloquean ciertos cumplidos, ya que ellas no están seguras si son estás realmente sinceras o no sienten que estés',
              color: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            ParrafoGrande(
              'en lo correcto o también están aquellas personas que no saben recibir cumplidos y se quedan callados. Los discursos amables surgen de las mentes amables, La práctica de notar activamente lo que una persona hace bien y hacerle',
              color: Colors.black,
            ),
            const SizedBox(
              height: 15,
            ),
            Parrafo(
              'un elogio sincero puede agregar nueva calidez, intimidad y capacidad de respuesta a una relación.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.solidCommentDots,
                texto: '!Felicidades¡por terminar el desafío!',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.pushNamed(context, '/home');
                }),
          ],
        ),
      ),
    );
  }
}
