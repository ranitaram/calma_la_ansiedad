import 'package:calmar_la_ansiedad/widgets/Boton_ejercicio.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

class ConsejoEjercicios extends StatefulWidget {
  @override
  State<ConsejoEjercicios> createState() => _ConsejoEjerciciosState();
}

class _ConsejoEjerciciosState extends State<ConsejoEjercicios> {
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
                icon: FontAwesomeIcons.personRunning,
                texto:
                    'Las endorfinas mantienen el bombeo de sangre exactamente cómo debe ser. Puede ayudar a inundar nuestro cuerpo con endorfinas, que pueden mejorar nuestro estado de ánimo.',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.personRunning,
                texto:
                    'Debido a que te sientes estresado, elige un ejercicio ligero que sea suave para el cuerpo, como caminar, nadar o trotar.',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.personRunning,
                texto:
                    'La excepción a esto es si estás hiperventilando o luchando por respirar. Haz lo que puedas para recuperar el aliento primero.',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.personRunning,
                texto:
                    'Las endorfinas son unos neurotransmisores que popularmente se integran dentro de las conocidas como hormonas de la felicidad.',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.personRunning,
                texto:
                    'A continuación te explicamos algunos de los beneficios y efectos de la endorfina en nuestro organismo:',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.personRunning,
                texto:
                    'Nos relajan: además de placer, nos aportan esa reconocible sensación de bienestar y relajación.',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.personRunning,
                texto:
                    'Si sufrimos de ansiedad o algún episodio estresante, las endorfinas nos ayudan a volver a un estado de calma y tranquilidad.',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.personRunning,
                texto:
                    'Regulan la presión de la sangre: las endorfinas también tienen efecto sobre nuestro sistema cardiovascular,.',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.personRunning,
                texto:
                    'esencialmente manteniendo estables los niveles de presión sanguínea y arterial.',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.personRunning,
                texto:
                    'Alimentos que liberan las endorfinas. A continuación te dejamos una lista de los alimentos que liberan endorfinas,',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.personRunning,
                texto:
                    'Chocolate puro. Carne roja. Pollo sin piel.  Cacahuetes. Garbanzos. Lentejas. Alubias Caballa. Atún.',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.personRunning,
                texto:
                    'Sardinas. Salmón. Huevos. Espárragos. Cerezas. Piña. Plátano. Semillas de calabaza. Semillas de girasol. Pimentón. Nuez moscada. Ginseng. Cúrcuma',
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
