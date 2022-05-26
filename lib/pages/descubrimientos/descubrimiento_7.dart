import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/top_bar.dart';

class Descubrimiento7 extends StatefulWidget {
  @override
  State<Descubrimiento7> createState() => _Descubrimiento7State();
}

class _Descubrimiento7State extends State<Descubrimiento7> {
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
              '¿Por qué la postura es tan importante? La postura y el estado de ánimo están relacionados también. Cuando notas que tu ánimo decae, trata de cambiar de postura. Postura y concentración están relacionadas. ',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'A menudo el mareo en la meditación o en cualquier momento, es una clave de que la postura se ha aflojado y que los pulmones no pueden llenarse plenamente con cada respiración. En esas circunstancias, acomódate en silencio,',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'enderezándote desde la base de la columna para estirarla y maximizar el espacio para respirar. Luego haz unas respiraciones profundas. El objetivo es crear el máximo de espacio para que la respiración fluya sin impedimentos.El cuerpo y la',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'mente no son dos: están profundamente conectados y son interdependientes. Cuando la mente o el estado de ánimo se encorvan, trata de ajustar la postura corporal. La gente suele sorprenderse al descubrir que tiene una mala postura y',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'es más frecuente de lo que piensan. Es fácil identificar a aquellas personas que han tenido algún tipo de entrenamiento, como soldados, líderes de una nación, líderes religiosos, entre otras personas y su postura es notable,',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            Parrafo(
              'estas personas al moverse por la vida reflejan confianza.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.jenkins,
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
