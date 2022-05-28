import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_26.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio26 extends StatefulWidget {
  @override
  State<Desafio26> createState() => _Desafio26State();
}

class _Desafio26State extends State<Desafio26> {
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
              Color.fromARGB(255, 208, 34, 22),
              Color.fromARGB(255, 92, 227, 107),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 26',
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
              'Mientras avanzas por tu día, presta atención al fenómeno del sufrimiento. ¿Cómo lo detectas en ti mismo y en los demás? ¿Dónde es más obvio? ¿Cuáles son las formas más leves? ¿Cuáles son las formas más intensas?',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.clipboardList,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate26()));
                }),
          ],
        ),
      ),
    );
  }
}
