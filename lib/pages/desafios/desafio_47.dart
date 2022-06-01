import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_47.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio47 extends StatefulWidget {
  @override
  State<Desafio47> createState() => _Desafio47State();
}

class _Desafio47State extends State<Desafio47> {
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
              Color.fromARGB(255, 242, 118, 41),
              Color.fromARGB(255, 167, 75, 232),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 47',
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
              'Cuando comas, toma un momento para observar la comida o bebida como si pudieras verla en retrospectiva, en su historia. Usa el poder de la imaginación para ver de dónde viene y ',
              color: Colors.black,
            ),
            ParrafoGrande(
              'cuánta gente pudo haber estado involucrada en traerla hasta tu plato. Piensa en las personas que plantaron, desmalezaron y cosecharon los alimentos, los camioneros que los transportaron,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'los empacadores y obreros, los almaceneros, los cajeros, y los miembros de la familia u otros cocineros que han preparado la comida. Agradece a esas personas antes de tomar un trago o un bocado.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.pizzaSlice,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate47()));
                }),
          ],
        ),
      ),
    );
  }
}
