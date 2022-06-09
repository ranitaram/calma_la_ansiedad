import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento19 extends StatefulWidget {
  @override
  State<Descubrimiento19> createState() => _Descubrimiento19State();
}

class _Descubrimiento19State extends State<Descubrimiento19> {
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
              Color.fromARGB(255, 161, 81, 236),
              Color.fromARGB(255, 204, 235, 5),
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
              'Las manos revelan nuestro estado de paz o intranquilidad mental. Muchas personas hacen gestos nerviosos inconscientes con las manos, como frotárselas o retorcerlas, tocarse la cara, golpetear la mesa con los dedos,',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'comerse las uñas, hacer crujir los nudillos, o juguetear con los pulgares. Cuando relajamos las manos, el resto del cuerpo e incluso la mente se relajan también. Cuando el cuerpo está quieto, la mente puede asentarse.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'La salud de ambos mejora. En la mayor parte de las tareas de nuestra vida, no es necesaria la tensión. Es una pérdida de energía. Por lo general vamos por la vida de uno o dos modos. De noche nos acostamos,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'nos relajamos y dormimos. Cuando suena el despertador, nos levantamos y cambiamos al modo que usamos durante el día: erguidos, reteniendo tensión y alertas. No hay muchos momentos en nuestra vida ocupada en que',
              color: Colors.black,
            ),
            ParrafoGrande(
              'estemos erguidos y al mismo tiempo relajados. (Lamentablemente, también hay momentos en que estamos acostados y no estamos ni relajados ni dormidos. Estamos, en cambio, rumiando, ansiosos,',
              color: Colors.black,
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            ParrafoGrande(
              'dando vueltas incesantemente, sin poder dormir). Recuerda relajar las manos y, con ellas, todo el cuerpo y la mente, te puedes ayudar con la meditación.',
              color: Colors.black,
            ),

            BotonGordo(
                icon: FontAwesomeIcons.handSparkles,
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
