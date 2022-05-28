import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_27.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio27 extends StatefulWidget {
  @override
  State<Desafio27> createState() => _Desafio27State();
}

class _Desafio27State extends State<Desafio27> {
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
              Color.fromARGB(255, 50, 123, 91),
              Color.fromARGB(255, 92, 207, 227),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 27',
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
              'Varias veces por día, en especial cuando tu estado mental no sea óptimo, haz algún tipo de paso bobo. Los más fáciles son los siguientes: caminar hacia atrás, saltar o brincar en un pie.',
              color: Colors.black,
            ),
            Parrafo(
              'Observa lo que sucede con tu estado mental o de ánimo cuando marchas de esa forma.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.personWalking,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate27()));
                }),
          ],
        ),
      ),
    );
  }
}
