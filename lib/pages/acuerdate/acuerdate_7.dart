import 'package:calmar_la_ansiedad/pages/descubrimientos/descubrimiento_7.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Acuerdate7 extends StatefulWidget {
  @override
  State<Acuerdate7> createState() => _Acuerdate7State();
}

class _Acuerdate7State extends State<Acuerdate7> {
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
              Color.fromARGB(255, 59, 178, 242),
              Color.fromARGB(255, 32, 237, 80),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Para que te acuerdes',
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
              'Pega pequeñas etiquetas en tus espejos y en todos los lugares donde frecuentemente te sueles sentar, así que cada vez que lo veas endereza tu postura.',
              color: Colors.black,
            ),
            // Parrafo(
            //   'toma conciencia de los efectos que brinda haberle hecho un cumplido sincero y como te sientes al respecto.',
            //   color: Colors.black,
            // ),
            BotonGordo(
                icon: FontAwesomeIcons.jenkins,
                texto: 'Si terminaste el desafío sigue adelante',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Descubrimiento7()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.arrowLeftLong,
                texto: 'Regresa si aún no has terminado el desafío',
                color1: Color.fromARGB(255, 4, 51, 43),
                color2: Color.fromARGB(255, 15, 136, 81),
                onpress: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
