import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_7.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/top_bar.dart';

class Desafio7 extends StatefulWidget {
  @override
  State<Desafio7> createState() => _Desafio7State();
}

class _Desafio7State extends State<Desafio7> {
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
              Color.fromARGB(255, 59, 178, 242),
              Color.fromARGB(255, 32, 237, 80),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 7',
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
            // Parrafo('', color: Colors.black,),
            // Parrafo('', color: Colors.black,),
            ParrafoGrande(
              'Toma conciencia de tu postura, ¿en qué postura estás y cómo se siente en el cuerpo? Eso es lo que te deberías de preguntar en cada momento que estés sentado, en tu escritorio, es tu silla de la escuela o',
              color: Colors.black,
            ),
            ParrafoGrande(
              'en el carro y pensar si cerraras los ojos, ¿dónde estás sintiendo presión o movimiento? Ser consiente de la postura también significa notar y ajustar la postura muchas veces en el día,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'cuando esté comiendo siéntete derecho con los pies bien apoyados en el piso y las rodillas ligeramente separadas y endereza tu columna, esto te permitirá respirar mejor.',
              color: Colors.black,
            ),
            // Parrafo(
            //   'presta atención a los olores y los sabores.',
            //   color: Colors.black,
            // ),

            BotonGordo(
                icon: FontAwesomeIcons.jenkins,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate7()));
                }),
          ],
        ),
      ),
    );
  }
}
