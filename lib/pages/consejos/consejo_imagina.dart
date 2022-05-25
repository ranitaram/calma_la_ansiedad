import 'package:calmar_la_ansiedad/widgets/Boton_ejercicio.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

class ConsejoImagina extends StatefulWidget {
  @override
  State<ConsejoImagina> createState() => _ConsejoImaginaState();
}

class _ConsejoImaginaState extends State<ConsejoImagina> {
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
        height: _deviceHeight * 0.98,
        width: _deviceWidth * 0.97,
        child: PageView(
          controller: PageController(viewportFraction: 0.6),
          scrollDirection: Axis.vertical,
          children: [
            BotonEjercicio(
                icon: FontAwesomeIcons.wandMagicSparkles,
                texto:
                    '¿Cuál es el lugar más relajante del mundo que puedas imaginar? ¿Una playa soleada frente a un mar de olas suavemente apacibles? ¿Una cabaña en las montañas?',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.wandMagicSparkles,
                texto:
                    'Imagínate en ese sitio, y trata de concentrarte en los detalles tanto como sea posible. Imagínate hundiendo los dedos de los pies en la arena cálida,',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.wandMagicSparkles,
                texto:
                    'o sintiendo el olor intenso de los pinos. Este punto debe ser tranquilo, calmado y relajante, fuera del tráfico de la ciudad.',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonGordo(
                icon: FontAwesomeIcons.arrowLeftLong,
                texto: 'Regresar',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
