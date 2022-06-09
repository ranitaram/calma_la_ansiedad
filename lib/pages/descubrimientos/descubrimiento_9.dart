import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/top_bar.dart';

class Descubrimiento9 extends StatefulWidget {
  @override
  State<Descubrimiento9> createState() => _Descubrimiento9State();
}

class _Descubrimiento9State extends State<Descubrimiento9> {
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
              Color.fromARGB(255, 5, 76, 99),
              Color.fromARGB(255, 228, 57, 208),
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
              'Siempre estamos rodeados de sonidos, incluso en lugares muy silenciosos, los oídos captan todos los sonidos, pero el cerebro bloquea muchos de ellos para poder concentrarnos en lo importante, como una conversación,',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'un programa de TV, un video en el celular etc. Cuando empezamos a escuchar con cuidado, se nos abre un nuevo mundo. Sonidos que eran molestos se vuelven interesantes,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'La práctica de escuchar es una forma poderosa de aquietar la mente. Cuando sentimos curiosidad por los sonidos, queremos escuchar con más detalle. Para hacerlo,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Para hacerlo, tenemos que pedirles a las voces que hay en nuestra mente que se callen por un momento. Escuchar es una excelente manera de desengancharnos de las interminables cavilaciones de la mente ansiosa. Cuando descubras',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'que tu mente está corriendo en una jaula para ardillas de su propia creación, detente y escucha la música de la habitación. Cuando estés crispado después de haber pasado todo un día frente a la computadora aléjate,',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'abre tu conciencia a la oscuridad y escucha la música de la noche. Aun en lo que se llama silencio hay sonido. Para escuchar este sutil sonido, la mente debe estar muy quieta.',
              color: Colors.white,
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
