import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_16.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio16 extends StatefulWidget {
  @override
  State<Desafio16> createState() => _Desafio16State();
}

class _Desafio16State extends State<Desafio16> {
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
              Color.fromARGB(255, 126, 76, 31),
              Color.fromARGB(255, 12, 199, 187),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 16',
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
              'Muchas veces al día. Da a tu mente un breve descanso. Cada 3 respiraciones, pide a las voces interiores que estén en silencio. Luego abre todos tus sentidos y se consiente de todo lo que te rodea.',
              color: Colors.white,
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            // Parrafo(
            //     'dejar un dulce en el escritorio de un compañero o hacer una donación anónima.'),

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
                icon: FontAwesomeIcons.lungs,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate16()));
                }),
          ],
        ),
      ),
    );
  }
}
