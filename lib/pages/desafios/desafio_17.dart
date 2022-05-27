import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_17.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Desafio17 extends StatefulWidget {
  @override
  State<Desafio17> createState() => _Desafio17State();
}

class _Desafio17State extends State<Desafio17> {
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
              Color.fromARGB(255, 45, 237, 7),
              Color.fromARGB(255, 245, 102, 212),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 17',
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
              'La clave para esté desafío del estar presente es la “conciencia de puertas”, Antes de atravesar una puerta, haz una pausa, incluso durante un segundo, y respira.',
              color: Colors.black,
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            // Parrafo(
            //     'dejar un dulce en el escritorio de un compañero o hacer una donación anónima.'),

            ParrafoGrande(
              'Sé consciente de las diferencias que puedes sentir en cada nuevo espacio en que entras. Presta mucha atención cuando entras a otro lugar, A menudo nos movemos de inmediato a un nuevo espacio sin terminar con el viejo.',
              color: Colors.black,
            ),
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
                icon: FontAwesomeIcons.doorOpen,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate17()));
                }),
          ],
        ),
      ),
    );
  }
}
