import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento24 extends StatefulWidget {
  @override
  State<Descubrimiento24> createState() => _Descubrimiento24State();
}

class _Descubrimiento24State extends State<Descubrimiento24> {
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
              Color.fromARGB(255, 4, 109, 8),
              Color.fromARGB(255, 254, 133, 5),
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
              'Al intentar este ejercicio, la mayoría de las personas descubre que tiene el hábito de “apilar” bocados de comida. Es decir, ponen un bocado en la boca, quitan la atención de la boca mientras cargan nuevamente comida en el tenedor o la cuchara.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            ParrafoGrande(
              'Luego se ponen un segundo bocado en la boca antes de haber tragado el primero. A menudo la mano está en el aire, con otro bocado a mitad de camino, mientras se está masticando el primero. Lo que se descubre es que,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'tan pronto como la mente empieza a divagar, la mano toma el control y pone nuevas porciones de comida encima de bocados parcialmente procesados. Es sorprendente cuán difícil puede ser esta simple tarea.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Se requiere tiempo, paciencia, persistencia, y sentido del humor para cambiar hábitos muy arraigados. La absorción de comida puede comenzar en la boca si masticamos bien y dejamos que los alimentos se mezclen con la saliva,',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'que contiene enzimas digestivas. Cuanto antes comienza la absorción, antes es enviada la señal de saciedad al cerebro y previamente nos sentimos satisfechos. Con antelación nos sentimos satisfechos, más precisos podemos ser',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'respecto de la cantidad de comida que nos servimos y luego consumimos. Hacer esta tarea puede llevarte a observar el surgimiento de la impaciencia en otros aspectos y ocasiones de tu vida. ¿Te impacientas cuando tienes que esperar?',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Tienes que preguntarte: “¿Por qué estoy tan apurado en pasar por la vida, cuando quiero disfrutarla tanto?” Experimentar un bocado o un trago a la vez es una forma de experimentar un momento a la vez. Como comemos o bebemos por lo menos tres',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'veces por día, esta herramienta nos da varias oportunidades de estar presentes cada día. Comer es naturalmente placentero, pero cuando lo hacemos rápido y sin estar presentes, no experimentamos ese placer. La investigación ',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'muestra que, irónicamente, ¡la gente come sus alimentos favoritos más rápido que aquellos que le disgustan! Quienes se dan atracones también informan que siguen comiendo en un esfuerzo por recrear el placer del primer bocado.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Como los receptores del gusto se cansan rápidamente, esto nunca va a suceder. Cuando la mente está ausente, pensando en el pasado o el futuro, estamos degustando la comida solo a medias.',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.drumstickBite,
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
