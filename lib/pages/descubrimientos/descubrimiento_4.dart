import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/top_bar.dart';

class Descubrimiento4 extends StatefulWidget {
  @override
  State<Descubrimiento4> createState() => _Descubrimiento4State();
}

class _Descubrimiento4State extends State<Descubrimiento4> {
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
              Color.fromARGB(255, 255, 7, 247),
              Color.fromARGB(255, 175, 230, 240)
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
              'Las manos son hábiles para todo tipo de trabajos, pueden hacer muchas cosas ellas solas con poca dirección de nuestra mente. Las dos manos pueden trabajar juntas o hacer cosas diferentes al mismo tiempo.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Mientras hacemos este desafío notamos que cada persona tiene gestos característicos diferentes con las manos, nuestras manos se mueven mientras hablamos casi por sí mismas. A mí me sorprende cuando escribo en la',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'computadora y estoy tecleando sin mirar el teclado y de repente me doy cuenta como las manos están tecleando y trabajando casi solas. Aun cuando estamos dormidos nos cuidan acomodando las sabanas y las almohadas.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'También notamos que nuestras manos cambian con el tiempo, mira tus manos e imagina cómo cuando eras un bebé, luego cuando van creciendo hasta alcanzar el presente, y luego imagina cuando envejecen más convirtiéndose sin vida cuando uno muere y',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'desvaneciéndose en la tierra. Todo el tiempo estamos siendo cuidados por nuestras manos, así que no olvides dejarlas de observar para estar en el presente y apreciarlas por todo lo que hacen por nosotros y más cuando no nos damos cuenta.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.handHoldingHeart,
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
