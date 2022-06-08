import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_22.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio22 extends StatefulWidget {
  @override
  State<Desafio22> createState() => _Desafio22State();
}

class _Desafio22State extends State<Desafio22> {
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
              Color.fromARGB(255, 237, 74, 231),
              Color.fromARGB(255, 222, 4, 4),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 22',
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

            // Parrafo('', color: Colors.black,),
            ParrafoGrande(
              'Con tanta frecuencia como sea posible durante el día, dirige tu conciencia a la planta de los pies. Sé consciente de las sensaciones en la planta del pie, por ejemplo,',
              color: Colors.white,
            ),

            ParrafoGrande(
              'la presión del piso o la tierra debajo de los pies, o la calidez o la frialdad de estos. Es particularmente importante hacer este ejercicio cuando sientas que te estás poniendo ansioso o molesto.',
              color: Colors.white,
            ),

            BotonGordo(
                icon: FontAwesomeIcons.shoePrints,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate22()));
                }),
          ],
        ),
      ),
    );
  }
}
