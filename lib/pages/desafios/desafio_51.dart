import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_51.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio51 extends StatefulWidget {
  @override
  State<Desafio51> createState() => _Desafio51State();
}

class _Desafio51State extends State<Desafio51> {
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
              Color.fromARGB(255, 1, 160, 158),
              Color.fromARGB(255, 101, 65, 3),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 51',
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
              'Pasa al menos cinco o diez minutos por día con esta práctica. Puede ser durante tu tiempo de meditación. Siéntate en una silla cómoda y respira normalmente. En cada inhalación,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'toma conciencia del oxígeno fresco y la energía vital que entra en tu cuerpo. En cada exhalación, envía esa energía a través del cuerpo junto con estas palabras silenciosas: “Que estés libre de molestias. Que estés en paz.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Que estés sano.” Eventualmente, puedes simplificar este proceso diciendo sólo “paz” con la exhalación. Durante el día, cada vez que tu atención se vea arrastrada al cuerpo',
              color: Colors.white,
            ),
            ParrafoGrande(
              '(cuando te miras en el espejo o cuando sientes alguna molestia), brinda esta bondad amorosa al cuerpo, aunque sólo sea brevemente.',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.userLarge,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate51()));
                }),
          ],
        ),
      ),
    );
  }
}
