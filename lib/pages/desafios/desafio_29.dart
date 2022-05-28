import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_29.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio29 extends StatefulWidget {
  @override
  State<Desafio29> createState() => _Desafio29State();
}

class _Desafio29State extends State<Desafio29> {
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
              'Desafío: 29',
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
              'Varias veces por día, mira hacia arriba deliberadamente. Tómate unos minutos para observar realmente el cielorraso de la habitación, los edificios altos, las copas de los árboles, los techos,',
              color: Colors.white,
            ),
            Parrafo(
              'las colinas o las montañas y el cielo. Ve qué nuevas cosas descubres.',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.cloudMoon,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate29()));
                }),
          ],
        ),
      ),
    );
  }
}
