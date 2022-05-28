import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento28 extends StatefulWidget {
  @override
  State<Descubrimiento28> createState() => _Descubrimiento28State();
}

class _Descubrimiento28State extends State<Descubrimiento28> {
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
              Color.fromARGB(255, 100, 108, 109),
              Color.fromARGB(255, 199, 107, 208),
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
              'Al hacer este ejercicio, nos damos cuenta de que el agua está en todas partes. Está dentro de nosotros, en la saliva, las lágrimas, la sangre, la orina, los jugos gástricos, el líquido sinovial, las secreciones sexuales. Somos 70% de agua;',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'sin ella, seríamos una pequeña pila de células secas y sales. Sin ella, estaríamos muertos en unos pocos días. Por lo general, no prestamos atención al agua a menos que haya un problema con ella:',
              color: Colors.black,
            ),
            ParrafoGrande(
              'se cortó el agua, el inodoro rebasó, o el camino al trabajo está inundado. En los países desarrollados, damos por sentado el agua pura. Hay una preocupación creciente de que la provisión de agua de nuestro mundo se acabe.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Sigue habiendo mucha gente en el planeta sin agua potable. ¿Podemos apreciar este don sustentador de vida, que nos dan cada día la tierra y el cielo? Cuando tomamos conciencia del agua, nuestra mente puede asumir su cualidad fluida.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Disfrutamos de sentarnos junto a un río o un arroyo, observando el cambio incesante, el flujo constante. ¿Podemos observar el flujo de nuestra vida con ojos calmos también, con el flujo infinito de causas y efectos?',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'El agua tiene otra cualidad de la que podemos aprender. Cuando el agua barrosa se vuelca en un vaso y se deja asentar sin molestarla, eventualmente, el barro se deposita en el fondo y el agua vuelve a aclararse.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Cuando nuestra mente está agitada, ansiosa o temerosa, es difícil ver alguna solución a nuestros problemas. Un aspecto del estar presente es recordar que es posible aquietar la mente y permitirle recuperar su claridad natural.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            Parrafo(
              'Solo siéntate, haz algunas respiraciones profundas, y permite que tus pensamientos y sentimientos se asienten.',
              color: Colors.black,
            ),
            //
            BotonGordo(
                icon: FontAwesomeIcons.water,
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
