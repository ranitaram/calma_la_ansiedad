import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_49.dart';
import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_50.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio50 extends StatefulWidget {
  @override
  State<Desafio50> createState() => _Desafio50State();
}

class _Desafio50State extends State<Desafio50> {
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
              Color.fromARGB(255, 164, 10, 120),
              Color.fromARGB(255, 6, 154, 6),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 50',
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
              'Toma conciencia de tu centro de gravedad. Está ubicado en el centro del abdomen bajo, unos cinco centímetros debajo del ombligo, a mitad de camino entre la pared abdominal delantera y la columna en la espalda.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'En las artes marciales este centro de gravedad se llama hara (en japonés) o tan tien (en chino). Siempre que tu mente divague, lleva la atención de nuevo a tu centro de gravedad.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Trata de iniciar todas las acciones físicas desde este sitio del cuerpo, sea que te estés estirando, caminando,  inclinando, etcétera. Hasta puedes picar alimentos de este modo. Deja que cada movimiento',
              color: Colors.white,
            ),
            Parrafo(
                'con el cuchillo se origine en el hara, fluya hacia el brazo, de allí a la mano, al cuchillo y a las verduras.'),
            BotonGordo(
                icon: FontAwesomeIcons.brain,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate50()));
                }),
          ],
        ),
      ),
    );
  }
}
