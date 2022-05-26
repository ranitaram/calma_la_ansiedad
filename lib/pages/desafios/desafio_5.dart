import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_5.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/top_bar.dart';

class Desafio5 extends StatefulWidget {
  @override
  State<Desafio5> createState() => _Desafio5State();
}

class _Desafio5State extends State<Desafio5> {
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
              Color.fromARGB(255, 255, 143, 7),
              Color.fromARGB(255, 220, 237, 32)
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 5',
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
            // Parrafo('', color: Colors.black,),
            ParrafoGrande(
              'En este desafío, cuando estés comiendo o bebiendo, no hagas otra cosa. Siéntate y tómate el tiempo para disfrutar lo que estás tomando. Despierta todos los sentidos mientras comes, mira los colores y formas,',
              color: Colors.black,
            ),
            Parrafo(
              'presta atención a los olores y los sabores.',
              color: Colors.black,
            ),

            BotonGordo(
                icon: FontAwesomeIcons.utensils,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate5()));
                }),
          ],
        ),
      ),
    );
  }
}
