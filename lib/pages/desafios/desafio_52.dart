import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_52.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio52 extends StatefulWidget {
  @override
  State<Desafio52> createState() => _Desafio52State();
}

class _Desafio52State extends State<Desafio52> {
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
              Color.fromARGB(255, 225, 237, 4),
              Color.fromARGB(255, 189, 189, 188),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 52',
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
              'Durante una semana, permítete sonreír. Nota la expresión de tu cara. Nótala desde adentro: ¿los labios se curvan hacia arriba o hacia abajo? ¿Tienes los dientes apretados?',
              color: Colors.black,
            ),
            ParrafoGrande(
              '¿Hay tensión y arrugas entre las cejas? Cuando pases por un espejo o un vidrio que refleje, espía tu expresión. Cuando notes una expresión neutral o negativa, sonríe. No tiene que ser una sonrisa grande; puede ser pequeña.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.faceSmile,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate52()));
                }),
          ],
        ),
      ),
    );
  }
}
