import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento16 extends StatefulWidget {
  @override
  State<Descubrimiento16> createState() => _Descubrimiento16State();
}

class _Descubrimiento16State extends State<Descubrimiento16> {
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
              Color.fromARGB(255, 126, 76, 31),
              Color.fromARGB(255, 12, 199, 187),
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
              'La simple práctica de solamente tres respiraciones puede convertirse en un alivio. Le pedimos a la mente que descanse un poco, que esté completamente quieta, solo durante tres respiraciones.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Como no tenemos que contar tres respiraciones, podemos disfrutarlas. Dejemos la mente suelta por un momento, luego fijemos toda la atención en únicamente tres respiraciones. A medida que la mente descanse más y',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),

            ParrafoGrande(
              'más en el momento presente, se asentará naturalmente. Luego, sin esfuerzo, podemos estar presente unas respiraciones más, y luego unas más, hasta que seamos capaces de sentarnos con una conciencia relajada y abierta.',
              color: Colors.white,
            ),
            const SizedBox(height: 20),
            ParrafoGrande(
              'Incluso de noche la mente no descansa. Crea sueños y procesa material no digerido del día. Toda esta actividad mental, todas estas elecciones y posibilidades son confusas y extenuantes. Así como el cuerpo necesita un descanso regular,',
              color: Colors.white,
            ),
            const SizedBox(height: 20),
            ParrafoGrande(
              'también lo necesita la mente. Esté desafío nos ayuda a romper con el hábito del pensamiento compulsivo. La mente tiene dos funciones: el pensamiento y la conciencia. Cuando somos recién nacidos,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'no tenemos palabras en la mente. Vivimos en la conciencia pura. Cuando aprendemos a hablar, las palabras empiezan a llenar la mente y la boca. Aprender a hablar es un paso necesario en el desarrollo,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'pero también es el comienzo de una mente que está siempre hablando dentro de la cabeza. Esta charla interna consume energía. La mente descansa de verdad solo cuando somos capaces de apagar su función del',
              color: Colors.white,
            ),
            ParrafoGrande(
              'pensamiento y encender su función de conciencia. Receta para la salud: Aquieta la mente únicamente durante tres respiraciones. Repite cuando sea necesario.',
              color: Colors.white,
            ),
            Center(child: Lottie.asset('assets/images/respira.json')),
            // Parrafo(
            //   'cuidadosamente reunida y ferozmente defendida, que llamamos “yo, mi, mío”.',
            //   color: Colors.white,
            // ),
            BotonGordo(
                icon: FontAwesomeIcons.lungs,
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
