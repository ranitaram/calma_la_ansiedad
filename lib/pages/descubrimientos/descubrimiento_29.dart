import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento29 extends StatefulWidget {
  @override
  State<Descubrimiento29> createState() => _Descubrimiento29State();
}

class _Descubrimiento29State extends State<Descubrimiento29> {
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
              Color.fromARGB(255, 84, 0, 101),
              Color.fromARGB(255, 27, 223, 220),
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
              'La mayor parte del tiempo, solo observamos una parte estrecha del mundo. Solamente cuando vemos u oímos algo inusual, como un hombre que tiene más de dos metros o un ruido fuerte repentino encima de nosotros, ',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'miramos hacia arriba. Por supuesto, en algunas ocupaciones, como el caso de los granjeros o de los marinos, a menudo se observa el cielo, pues las señales de cambios en el clima son importantes para ellos,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'pero hoy en día es más probable que miren el canal del tiempo o una pantalla de radar. Mirar hacia arriba amplía nuestra perspectiva, dejando que nuestra mente salga de su neurótica jaula para ardillas y se estire y se flexibilice.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              '“Mirar” no es en realidad lo mismo qué ver. Para ver algo no se requiere solo visión, sino atención. Estamos tan preocupados con las cosas que tenemos justo delante de nosotros que nos perdemos muchas de aquellas que pasan a nuestro alrededor.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Los niños son más conscientes que los adultos, cuya ansiedad ha limitado su vida a: “¿De qué cosa que viene hacia mí me tengo que preocupar?” Mirar hacia arriba expande el tamaño de nuestra vida para ',
              color: Colors.white,
            ),
            ParrafoGrande(
              'incluir muchos más seres (como los pájaros) y fenómenos (como el arcoíris) que antes. Cuando nuestra vista se amplía, nuestra experiencia del yo se expande también.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Mirar hacia arriba es mirar hacia afuera... afuera de la caja llamada “yo”. Los ojos son una importante herramienta del estar presente. ¡Abre tu campo de visión y mira de verdad!',
              color: Colors.white,
            ),
            //
            BotonGordo(
                icon: FontAwesomeIcons.cloudMoon,
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
