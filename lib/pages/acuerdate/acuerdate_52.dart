import 'package:calmar_la_ansiedad/pages/descubrimientos/descubrimiento_52.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Acuerdate52 extends StatefulWidget {
  @override
  State<Acuerdate52> createState() => _Acuerdate52State();
}

class _Acuerdate52State extends State<Acuerdate52> {
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
              Color.fromARGB(255, 225, 237, 4),
              Color.fromARGB(255, 189, 189, 188),
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
              'Coloca la palabra sonrisa o una imagen de labios sonrientes en diferentes lugares, incluyendo espejos y quizás la computadora, el tablero del auto, la parte de atrás de la puerta de entrada y el teléfono.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Trata de sonreír mientras hablas por teléfono, en el semáforo o cada vez que tu computadora muestre el ícono de espera. Cuando medites, prueba una suave “sonrisa interior”',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.faceSmile,
                texto: 'Si terminaste el desafío sigue adelante',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Descubrimiento52()));
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
