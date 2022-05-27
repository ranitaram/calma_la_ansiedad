import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento17 extends StatefulWidget {
  @override
  State<Descubrimiento17> createState() => _Descubrimiento17State();
}

class _Descubrimiento17State extends State<Descubrimiento17> {
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
              'Vas caminando hacia una puerta pensando: “Puerta. Puerta. Sé consciente al atravesarla...”, y de pronto, te encuentras del otro lado de la puerta, sin conciencia de cómo pasaste por ella.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Esté desafío, es muy difícil, no te desanimes si al comenzar no tienes éxito con este reto. Las diferencias en los espacios son más obvias cuando uno pasa del interior al exterior. Hay cambios claros en la temperatura,',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Muchos —entre los que me incluyo— necesitamos varias semanas de repetir esta tarea hasta poder tomar conciencia de siquiera la mitad de las puertas que atravesamos. También reflexionamos acerca de por qué este ejercicio exigía',
              color: Colors.black,
            ),
            const SizedBox(height: 20),
            ParrafoGrande(
              'tanto esfuerzo. Una persona tuvo una explicación: cuando atravesamos una puerta, la mente se adelanta al futuro, hacia lo que encontraremos y haremos del otro lado. Este movimiento de la mente no es obvio.',
              color: Colors.black,
            ),
            const SizedBox(height: 20),
            ParrafoGrande(
              'Requiere una observación cuidadosa. Nos hace inconscientes, por un breve instante, de lo que estamos haciendo en el presente. La mente inconsciente, sin embargo, es capaz de guiarnos mientras abrimos la puerta y',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'la atravesamos sanos y salvos. Este es un ejemplo de cómo nos movemos durante gran parte de nuestro día como sonámbulos, navegando por el mundo atrapado en un sueño. Este estado inconsciente es una fuente de insatisfacción.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            Parrafo(
              'Aprecia cada espacio físico y cada espacio mental que encuentres.',
              color: Colors.black,
            ),

            // ParrafoGrande(
            //   'pensamiento y encender su función de conciencia. Receta para la salud: Aquieta la mente únicamente durante tres respiraciones. Repite cuando sea necesario.',
            //   color: Colors.white,
            // ),

            // Parrafo(
            //   'cuidadosamente reunida y ferozmente defendida, que llamamos “yo, mi, mío”.',
            //   color: Colors.white,
            // ),
            BotonGordo(
                icon: FontAwesomeIcons.doorOpen,
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
