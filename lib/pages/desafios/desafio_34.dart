import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_34.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio34 extends StatefulWidget {
  @override
  State<Desafio34> createState() => _Desafio34State();
}

class _Desafio34State extends State<Desafio34> {
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
              Color.fromARGB(255, 38, 199, 162),
              Color.fromARGB(255, 37, 87, 162),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 34',
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
              'Toma conciencia del gran planeta que hay debajo de ti. Toma conciencia a través de la vista y el tacto, especialmente el de la planta del pie. Cuando no estés afuera, puedes usar la imaginación para',
              color: Colors.black,
            ),
            Parrafo(
              '“sentir” la tierra que está debajo del piso en el que estás o el edificio en que te encuentras.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.globe,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate34()));
                }),
          ],
        ),
      ),
    );
  }
}
