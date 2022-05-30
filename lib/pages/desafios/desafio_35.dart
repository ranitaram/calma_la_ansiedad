import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_35.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio35 extends StatefulWidget {
  @override
  State<Desafio35> createState() => _Desafio35State();
}

class _Desafio35State extends State<Desafio35> {
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
              Color.fromARGB(255, 255, 44, 7),
              Color.fromARGB(255, 225, 169, 203),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 35',
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
              'Toma conciencia de la aversión, del surgimiento de sentimientos negativos hacia algo o alguien. Estos pueden ser sentimientos leves, como irritación, o fuertes, como enojo y odio. Trata de ver qué sucedió justo antes de que apareciera la aversión.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
                '¿Qué impresiones sensoriales se produjeron en la vista, el oído, el tacto, el gusto, el olfato o el pensamiento? ¿Cuándo surge la aversión por primera vez durante el día?'),
            BotonGordo(
                icon: FontAwesomeIcons.faceAngry,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate35()));
                }),
          ],
        ),
      ),
    );
  }
}
