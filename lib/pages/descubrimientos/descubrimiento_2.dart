import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_1.dart';
import 'package:calmar_la_ansiedad/pages/desafios_page.dart';

import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/top_bar.dart';

class Descubrimiento2 extends StatefulWidget {
  @override
  State<Descubrimiento2> createState() => _Descubrimiento2State();
}

class _Descubrimiento2State extends State<Descubrimiento2> {
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
                colors: [Colors.green, Colors.purple])),
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
            Parrafo(
              'Frecuentemente, dejamos los cuartos más desordenados que cuando entramos',
              color: Colors.black,
            ),
            Parrafo(
              'y pensamos que lo limpiaremos más tarde y luego eso no sucede;',
              color: Colors.black,
            ),
            Parrafo(
              'Entonces, si lo hacemos en ese momento, no tenemos que sentir un malestar creciente ante el desorden en aumento.',
              color: Colors.black,
            ),
            Parrafo(
              'Este desafío nos ayuda a volvernos consientes de la tendencia a no hacer las cosas,',
              color: Colors.black,
            ),
            const SizedBox(height: 15),
            Parrafo(
              'incluso aunque sean pequeñas y que por algún motivo no tenemos motivación para hacer.',
              color: Colors.black,
            ),
            const SizedBox(height: 15),
            Parrafo(
              'El desafío pone en foco a nuestra tendencia a ser perezosos, a menudo dejamos líos para que otros limpien,',
              color: Colors.black,
            ),
            Parrafo(
              'nuestra mente y vida parece menos complicada cuando hemos limpiado el espacio y las cosas que nos rodean.',
              color: Colors.black,
            ),
            const SizedBox(height: 15),
            Parrafo(
              'La sensación de satisfacción de no dejar rastros puede ser el reflejo de nuestro deseo de dejar el mundo,',
              color: Colors.black,
            ),
            Parrafo(
              'al menos no peor que cuando entramos en él y ojalá, dejarlo un poco mejor.',
              color: Colors.black,
            ),
            Parrafo(
              'Idealmente, los únicos rastros que dejaremos serán las formas en que hemos amado, inspirado,',
              color: Colors.black,
            ),
            const SizedBox(height: 15),
            Parrafo(
              'enseñado o servido a otros, esto es lo que tendrá el efecto más positivo en la gente en el futuro.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.angellist,
                texto: '! Felicidades¡por terminar el desafío!',
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
