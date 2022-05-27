import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_14.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio14 extends StatefulWidget {
  @override
  State<Desafio14> createState() => _Desafio14State();
}

class _Desafio14State extends State<Desafio14> {
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
              Color.fromARGB(255, 123, 70, 227),
              Color.fromARGB(255, 91, 108, 7),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 14',
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
              'Esta semana intenta mirar las cosas y a las personas con ojos amorosos. Nota cualquier cambio que se produzca en tus ojos, cara, cuerpo, corazón, mente, campo visual, y enfócate en recordar mirar con ojos amorosos.',
              color: Colors.white,
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            // ParrafoGrande(
            //   'tus dispositivos electrónicos, no leas periódicos ni revistas, ya sea online o impresos, no navegues por internet ni tampoco escuches la radio. Si escuchas hablar a alguien de una noticia,',
            //   color: Colors.white,
            // ),

            // ParrafoGrande(
            //   'no tienes que taparte los oídos, pero evita entrar a profundidad en la conversación con ese tema, si insisten, puedes platicarle del desafío que estás llevando a cabo.',
            //   color: Colors.white,
            // ),
            // ParrafoGrande(
            //   'Puedes buscar tus tareas en internet y hacer tus investigaciones, pero evita a toda costa las noticias. Parte de este desafío de estar presente es encontrar alternativas al consumo de medios.',
            //   color: Colors.white,
            // ),
            // Parrafo(
            //   'seguir la secuencia de los retos poco a poco, ya que tienen su razón de estar ordenados de esta forma.',
            //   color: Colors.black,
            // ),

            // Parrafo(
            //   'presta atención a los olores y los sabores.',
            //   color: Colors.black,
            // ),

            BotonGordo(
                icon: FontAwesomeIcons.eye,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate14()));
                }),
          ],
        ),
      ),
    );
  }
}
