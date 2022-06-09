import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_39.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio39 extends StatefulWidget {
  @override
  State<Desafio39> createState() => _Desafio39State();
}

class _Desafio39State extends State<Desafio39> {
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
              Color.fromARGB(255, 86, 142, 81),
              Color.fromARGB(255, 5, 232, 217),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 39',
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
              'Detente durante el día e identifica conscientemente lo que eres capaz de agradecer en este momento. Puede ser algo respecto de ti mismo, de otra persona de tu ambiente',
              color: Colors.black,
            ),
            ParrafoGrande(
              'o de lo que tu cuerpo está haciendo o sintiendo. Esta es una investigación. Sé curioso, pregúntate: “¿Hay algo que pueda agradecer en este preciso momento?”',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.userGroup,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate39()));
                }),
          ],
        ),
      ),
    );
  }
}
