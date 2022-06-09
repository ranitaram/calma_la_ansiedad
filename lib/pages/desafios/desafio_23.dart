import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_23.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio23 extends StatefulWidget {
  @override
  State<Desafio23> createState() => _Desafio23State();
}

class _Desafio23State extends State<Desafio23> {
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
              Color.fromARGB(255, 225, 159, 46),
              Color.fromARGB(255, 120, 108, 108),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 23',
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
              'Con tanta frecuencia como sea posible, desliza la conciencia de los objetos a los espacios que los rodean. Por ejemplo, nota el espacio vacío en lugar del mobiliario, la gente u otros objetos visuales.',
              color: Colors.black,
            ),

            BotonGordo(
                icon: FontAwesomeIcons.creativeCommonsZero,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate23()));
                }),
          ],
        ),
      ),
    );
  }
}
