import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_12.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio12 extends StatefulWidget {
  @override
  State<Desafio12> createState() => _Desafio12State();
}

class _Desafio12State extends State<Desafio12> {
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
              Color.fromARGB(255, 228, 55, 228),
              Color.fromARGB(255, 244, 210, 16),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 12',
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
              'Cuando estés haciendo fila en una tienda, esperando a alguien o esperado a en un semáforo, aprovéchalo como una oportunidad para practicar el presente, hay diferentes maneras para estar presentes en los mementos de espera, una es',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'iniciar con las respiraciones profundas para ayudar a tu cuerpo a disipar la tensión, pon atención en las sensaciones que se manifiestan en algunas partes del cuerpo, notando cómo cambian continuamente. ',
              color: Colors.black,
            ),

            ParrafoGrande(
              'Otra manera para practicar el presente cuando se está esperando es escuchar los sonidos, abrir el oído y ser consiente. Habrá otras maneras que las descubrirás en los próximos desafíos, pero primero tenemos que dominar estas y',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            Parrafo(
              'seguir la secuencia de los retos poco a poco, ya que tienen su razón de estar ordenados de esta forma.',
              color: Colors.black,
            ),

            BotonGordo(
                icon: FontAwesomeIcons.stopwatch,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate12()));
                }),
          ],
        ),
      ),
    );
  }
}
