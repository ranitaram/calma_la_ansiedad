import 'package:calmar_la_ansiedad/pages/descubrimientos/descubrimiento_18.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/custom_parrafo.dart';

import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Acuerdate18 extends StatefulWidget {
  @override
  State<Acuerdate18> createState() => _Acuerdate18State();
}

class _Acuerdate18State extends State<Acuerdate18> {
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
              Color.fromARGB(255, 74, 77, 73),
              Color.fromARGB(255, 100, 74, 225),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Para que te acuerdes',
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
              'Coloca una pequeña imagen de un árbol en el tablero del auto y en las ventanas por las que sueles mirar hacia afuera.',
              color: Colors.white,
            ),
            // Parrafo(
            //   'redes sociales, será mucho mejor, hay que evitar toda distracción y tentación.',
            //   color: Colors.white,
            // ),
            // const SizedBox(
            //   height: 20,
            // ),
            // Parrafo(
            //   'teléfono para mirarlo y distraernos, o pegar esa pequeña  en tu reloj si es que usas.',
            //   color: Colors.black,
            // ),
            BotonGordo(
                icon: FontAwesomeIcons.tree,
                texto: 'Si terminaste el desafío sigue adelante',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Descubrimiento18()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.arrowLeftLong,
                texto: 'Regresa si aún no has terminado el desafío',
                color1: const Color.fromARGB(255, 4, 51, 43),
                color2: const Color.fromARGB(255, 15, 136, 81),
                onpress: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}