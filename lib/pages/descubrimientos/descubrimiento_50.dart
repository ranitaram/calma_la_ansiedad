import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento50 extends StatefulWidget {
  @override
  State<Descubrimiento50> createState() => _Descubrimiento50State();
}

class _Descubrimiento50State extends State<Descubrimiento50> {
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
              Color.fromARGB(255, 164, 10, 120),
              Color.fromARGB(255, 6, 154, 6),
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
              'Quienes practican deportes, a menudo, hacen uso de su centro de gravedad. Un jugador de tenis que está esperando para devolver una volea o un futbolista que corre con la pelota, ambos se agachan para mantener el centro bajo.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Su velocidad, flexibilidad y agilidad surge de ese centro. Al hacer este ejercicio, las personas suelen notar que tienen más estabilidad, mejor equilibrio y más energía física.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'También descubren que apoyarse en el hara afecta la mente. Se aquieta más, se concentra más y se amplía el campo de la conciencia. Quizás estemos sentados en una reunión, atrapados en una acalorada discusión,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'pero cuando ponemos la conciencia en nuestro centro, notamos más cosas de las que están sucediendo en toda la sala, así como toda la gente que está allí, el tic-tac de un reloj o la tos nerviosa de uno de los presentes.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Si la gente practica el estar presente en el hara el tiempo suficiente, a menudo descubre que hay también un efecto estabilizador en sus emociones. Cuando surge una emoción difícil como el enojo,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'si llevan la conciencia a su centro de gravedad, la emoción deja de crecer y pronto comienza a desvanecerse. Cuando te apoyas en el hara, eres como uno de esos juguetes inflables con peso en la base.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Puedes ser empujado hacia los lados o volcado, pero siempre rebotas y te incorporas. La brecha entre nosotros y todo lo demás no puede cerrarse agregando intensidad a nuestra vida.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Son nuestros pensamientos incesantes los que crean esa brecha. Cuando movemos nuestro “centro de operaciones” de la mente al hara, algo sucede.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Los pensamientos impertinentes se asientan, la conciencia se abre, y la incómoda sensación de brecha entre nosotros y todo lo demás se disuelve. ¡Pruébalo!',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Siempre que te sientas desequilibrado, lleva la conciencia a tu centro. Estabilizará tu cuerpo, tu mente y tu corazón.',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.brain,
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
