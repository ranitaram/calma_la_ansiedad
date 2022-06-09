import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_31.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio31 extends StatefulWidget {
  @override
  State<Desafio31> createState() => _Desafio31State();
}

class _Desafio31State extends State<Desafio31> {
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
              Color.fromARGB(255, 237, 71, 5),
              Color.fromARGB(255, 235, 209, 10),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 31',
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
              'Durante esta semana, con tanta frecuencia como sea posible, toma conciencia de los olores y las fragancias. Quizás sea más fácil hacer esto cuando estás comiendo o bebiendo, pero prueba en otros momentos también.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Varias veces por día, tratar de husmear el aire como un perro. Si no hay muchos olores en tu ambiente, trata de crear algunos que puedas detectar. Puedes colocarte un poco de vainilla en la muñeca,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'o hervir algunas especias, como canela o clavo de olor en agua en la cocina. También puedes tratar de prender algunas velas perfumadas o de oler algunos aceites aromáticos.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.java,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate31()));
                }),
          ],
        ),
      ),
    );
  }
}
