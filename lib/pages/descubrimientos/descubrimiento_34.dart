import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento34 extends StatefulWidget {
  @override
  State<Descubrimiento34> createState() => _Descubrimiento34State();
}

class _Descubrimiento34State extends State<Descubrimiento34> {
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
              Color.fromARGB(255, 38, 199, 162),
              Color.fromARGB(255, 37, 87, 162),
            ])),
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
              'Despertarnos, ponernos de pie e inmediatamente arrodillarnos y tocar con la frente el piso nos ayuda a comenzar el día con humildad y con gratitud por la tierra que nos abraza. Terminamos el día con la misma reverencia antes de ir a la',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
                'cama, un reconocimiento y una expresión de gratitud para la tierra siempre proveedora. Todo el día los humanos estamos caminando y conduciendo por la superficie de la Tierra y somos casi completamente',
                color: Colors.black),
            ParrafoGrande(
                'inconscientes de la enorme esfera que es la plataforma de  nuestra vida. Somos igualmente inconscientes de la fuerza de gravedad que la Tierra ejerce sobre nosotros. Llevar conciencia a la Tierra que está debajo de nosotros,',
                color: Colors.black),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
                'sosteniendo cada uno de nuestros pasos, afirmando nuestra vida, es profundamente alentador para mucha gente. Desarrolla la meditación que es como la Tierra: así como la Tierra no es perturbada por',
                color: Colors.black),
            ParrafoGrande(
                'las cosas agradables o desagradables con las que entra en contacto, así, si meditas como la Tierra, las experiencias agradables y desagradables no te perturbarán. El estar presente,',
                color: Colors.black),
            ParrafoGrande(
                'El estar presente, la meditación o la oración tienen el poder de entrenar nuestro corazón y nuestra mente para que descansen en un estado igualmente constante e imperturbable. Por supuesto, reconocer la cualidad estable,',
                color: Colors.black),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
                'inamovible de la Tierra, no significa que no debamos preocuparnos por la salud de nuestro planeta y permitir que sea contaminado. Sin embargo, también es importante que no permitamos que nuestra preocupación',
                color: Colors.black),
            ParrafoGrande(
                'por el ambiente envenene nuestra mente. Podemos pensar y hablar mucho sobre un problema, pero si eso nos impide que estemos presentes o que desarrollemos una mente no contaminada,',
                color: Colors.black),
            Parrafo(
              'el problema que estamos tratando de abordar seguirá sin resolverse.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.globe,
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
