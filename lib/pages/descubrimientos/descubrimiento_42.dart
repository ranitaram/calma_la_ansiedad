import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento42 extends StatefulWidget {
  @override
  State<Descubrimiento42> createState() => _Descubrimiento42State();
}

class _Descubrimiento42State extends State<Descubrimiento42> {
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
              Color.fromARGB(255, 5, 106, 230),
              Color.fromARGB(255, 118, 175, 210),
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
              'Un hombre estaba posponiendo sus solicitudes de presentación, y descubrió que su mente estaba poniendo excusas como: “Si no fuera por esto o aquello, tendría tiempo para hacerlo”,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'cuando en realidad, estaba perdiendo el tiempo que tenía disponible. Descubrimos muchas oportunidades por día para procrastinar o ser perezoso:',
              color: Colors.white,
            ),
            ParrafoGrande(
              'dejar un plato sucio en el fregadero para después o para que otro lo lave, tirar la ropa en el piso por la noche, dejar la cama sin hacer por la mañana, no recoger un trozo de basura que no entró en el bote,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'dejar los dos últimos cuadrados de papel higiénico en el rollo para no tener que cambiarlo. Esta práctica implica adoptar un nuevo lema: “Hazlo ahora.” Un hombre se dio cuenta de que procrastinaba todo el día,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'comenzando por demorarse para salir de la cama por la mañana. Otro dijo que fue capaz de superar ese problema cuando se dio cuenta de que la procrastinación solo empeoraba las cosas.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Cuanto más posponía salir de la cama, más difícil se le hacía levantarse, así que ahora se levanta antes de que suene el despertador. Encontró que, si se demoraba en subirse a la bicicleta para ir al centro de meditación,',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'terminaba retrasándose tanto que decidía no ir directamente por miedo a llegar tarde. El antídoto contra la procrastinación es asumir toda la responsabilidad.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Esto incluye responsabilizarse por todo, desde nuestros líos personales, incluidos los físicos, como un jarro sucio o una cama sin hacer, y nuestros líos psicológicos, como los malentendidos y los errores.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Algunas personas procrastinan porque optan por lo que da placer inmediato y requiere poco esfuerzo, como ir al cine en lugar de terminar la tarea.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Ignoran las consecuencias desagradables que se producirán inevitablemente en el futuro. Otros procrastinan a causa de la aversión.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Se sienten tensos y abrumados ante la idea de comenzar una tarea y no se dan cuenta de que posponerla solo provoca más ansiedad. Muchos buenos proyectos nunca comienzan ',
              color: Colors.white,
            ),
            ParrafoGrande(
              'o nunca terminan por el miedo al fracaso o a la crítica una vez que el proyecto se manifieste. Algunas personas evitan hacer un trabajo escapando a la fantasía o a un olvido inducido por el alcohol.',
              color: Colors.white,
            ),
            Parrafo(
                'Si te dieran una semana de vida, ¿qué sería lo más importante que harías o dirías? No lo pospongas.'),
            BotonGordo(
                icon: FontAwesomeIcons.gamepad,
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
