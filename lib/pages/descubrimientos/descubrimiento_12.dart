import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/custom_parrafo.dart';
import '../../widgets/top_bar.dart';

class Descubrimiento12 extends StatefulWidget {
  @override
  State<Descubrimiento12> createState() => _Descubrimiento12State();
}

class _Descubrimiento12State extends State<Descubrimiento12> {
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
              Color.fromARGB(255, 228, 55, 228),
              Color.fromARGB(255, 244, 210, 16),
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
              'Las oportunidades de practicar estar presente surgen a lo largo del día. Cuando estamos atorados en el tráfico, nuestro instinto es hacer algo para distraernos de la incomodidad de la espera.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Vemos videos en el teléfono, mandamos mensajes, llamamos a alguien o le cambiamos a la radio a ver qué más encontramos. Es aquí cuando podemos practicar, estar presentes, mientras estamos esperando en algún lugar,',
              color: Colors.black,
            ),

            ParrafoGrande(
              'La mente se beneficia doblemente: primero, abandonando un estado negativo, y segundo, obteniendo los efectos beneficiosos de unos minutos extra de práctica. Cuando iniciamos esté desafío,',
              color: Colors.black,
            ),

            ParrafoGrande(
              'aprendes a reconocer los cambios que acompañan a pensamientos y emociones negativos inminentes, como la impaciencia de tener que esperar. La mayoría de nosotros tenemos una mente que mide la autoestima en términos de productividad,',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Si no produje algo hoy, si no termine mis tareas, si no gane suficiente dinero en el día, si no me alcanzo para comprar toda la despensa, sino salí a hacer ejercicio, si reprobé un examen, entonces mi día fue una perdida de tiempo y',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'fracase. No nos damos crédito por tomarnos tiempo para ser, y estar presente, “Esperar” es entonces una fuente de frustración. ¡Piensa en las cosas que podrías estar haciendo!',
              color: Colors.black,
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            ParrafoGrande(
              'Cuando dejamos de estar ocupados y de ser productivos y pasamos simplemente a estar quietos y conscientes, también sentiremos apoyo, intimidad y felicidad aun cuando no haya nadie alrededor.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Estos sentimientos positivos son un “producto” que es mucho más deseado, pero que no puede ser comprado. Son el resultado natural de la presencia. Son un derecho de nacimiento que olvidamos que tenemos.',
              color: Colors.black,
            ),

            Parrafo(
              'No te molestes cuando tengas que esperar; disfruta del tiempo extra para practicar estar presente.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.stopwatch,
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
