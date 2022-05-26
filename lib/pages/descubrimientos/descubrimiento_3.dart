import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/top_bar.dart';

class Descubrimiento3 extends StatefulWidget {
  @override
  State<Descubrimiento3> createState() => _Descubrimiento3State();
}

class _Descubrimiento3State extends State<Descubrimiento3> {
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
                colors: [Colors.amber, Colors.brown])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              '¿Qué aprendimos?',
              fontSize: 25,
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
              'Esté desafío, es uno de los más difíciles, nos cuesta mucho trabajo atrapar nuestras muletillas antes de decirlas. Una vez que prestes atención a las muletillas, las comenzaras a oír en todas partes.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Ahora tomarás conciencia de cómo la ausencia de muletillas hace que tú diálogo sea más eficaz y poderoso, escucha los discursos de los oradores profesionales, las muletillas parecen cumplir varias funciones,',
              color: Colors.black,
            ),
            const SizedBox(height: 20),
            Parrafo(
              'Llenan el espacio y le dicen al oyente que vas a empezar a hablar o que no has terminado de hablar todavía.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.headSideCoughSlash,
                texto: '!Felicidades¡por terminar el desafío!',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.pushNamed(context, '/home');
                }),
          ],
        ),
      ),
    );
  }
}
