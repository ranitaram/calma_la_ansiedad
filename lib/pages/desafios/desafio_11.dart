import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_11.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/top_bar.dart';

class Desafio11 extends StatefulWidget {
  @override
  State<Desafio11> createState() => _Desafio11State();
}

class _Desafio11State extends State<Desafio11> {
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
              Color.fromARGB(255, 74, 228, 74),
              Color.fromARGB(255, 244, 31, 16),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 11',
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
            Parrafo(
              'Utiliza tus manos cariñosas y una caricia amorosa, incluso con objetos',
              color: Colors.black,
            ),
            // Parrafo('', color: Colors.black,),
            // ParrafoGrande(
            //   'Cuando escuches el teléfono que suena, deja lo que estás haciendo y realiza 3 respiraciones para asentar a mente antes de responder. Si tu trabajo requiere de contestar llamadas continuamente puedes acortar esto a unas 2 respiraciones.',
            //   color: Colors.white,
            // ),
            // const SizedBox(
            //   height: 20,
            // ),
            // ParrafoGrande(
            //   'El objetivo de esto es hacer una pausa y hacer una respiración profunda, tranquilizadora, antes de responder la llamada. Si recibes pocas llamas al día pon una alarma que suene varias veces al día cada 90 minutos,',
            //   color: Colors.white,
            // ),
            // Parrafo(
            //   'por ejemplo, cuando suene, detente y respira.',
            //   color: Colors.white,
            // ),

            // Parrafo(
            //   'presta atención a los olores y los sabores.',
            //   color: Colors.black,
            // ),

            BotonGordo(
                icon: FontAwesomeIcons.handsPraying,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate11()));
                }),
          ],
        ),
      ),
    );
  }
}
