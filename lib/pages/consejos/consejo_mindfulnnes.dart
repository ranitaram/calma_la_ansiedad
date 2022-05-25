import 'package:calmar_la_ansiedad/widgets/Boton_ejercicio.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

class ConsejoMindfulness extends StatefulWidget {
  @override
  State<ConsejoMindfulness> createState() => _ConsejoMindfulnessState();
}

class _ConsejoMindfulnessState extends State<ConsejoMindfulness> {
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
                icon: FontAwesomeIcons.brain,
                texto:
                    'La conciencia plena puede ayudarte a conectarte con la realidad que te rodea. Dado que los ataques de pánico pueden causar un sentimiento de desapego o',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.brain,
                texto:
                    'separación de la realidad, esto puede combatir un ataque de pánico a medida que se acerca o cuándo realmente ocurre.',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.brain,
                texto:
                    'Concéntrate en las sensaciones físicas con las que estás familiarizado, como hundir los pies en el suelo o sentir la textura de tus jeans en las manos.',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.brain,
                texto:
                    'Estas sensaciones específicas te ubican firmemente en la realidad y te dan un objetivo en el cual concentrarte.',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.brain,
                texto:
                    'Regresa a la sección de desafíos y empieza uno, para comenzar a trabajar el estar presente y concentrarte con la realidad que te rodea,',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.brain,
                texto:
                    'te recomendamos ir en orden, ya que conforme avanzan los desafíos algunos dependen que tengas dominados los primeros.',
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
