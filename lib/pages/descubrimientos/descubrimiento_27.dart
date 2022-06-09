import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento27 extends StatefulWidget {
  @override
  State<Descubrimiento27> createState() => _Descubrimiento27State();
}

class _Descubrimiento27State extends State<Descubrimiento27> {
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
              Color.fromARGB(255, 50, 123, 91),
              Color.fromARGB(255, 92, 207, 227),
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
              'Descubrimos que es una de las formas más rápidas de cambiar tu estado de ánimo, y el de los que te están mirando. ¡Fíjate si tus hijos lo prueban cuando están de mal humor! La capacidad de cambiar estados mentales que se hunden en',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'lo negativo o lo depresivo es una habilidad vital. Hasta que no nos acostumbremos a cambiar de estado mental usando la mente, tenemos que conseguir la ayuda del cuerpo. No podemos depender de la gente o de las cosas que están',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'fuera de nosotros para cambiar nuestras emociones difíciles. ¿Por qué no? Primero, porque otra persona nunca puede experimentar o conocer verdaderamente el estado de nuestro corazón. Cuando aprendemos a cambiar un estado de ánimo que',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'no es sano por nosotros mismos, en lugar de ser la víctima de nuestras emociones y pensamientos cambiantes, nos convertimos en lo que se llama en zen el “Amo o Ama de la Casa”. A través de una práctica diligente,',
              color: Colors.black,
            ),
            const SizedBox(height: 20),
            ParrafoGrande(
              'comenzamos a confiar en nuestra capacidad para cambiar nuestros pensamientos y estados de ánimo según lo requiera cada situación. Luego nuestro miedo de ser un ser humano que vive en medio de un',
              color: Colors.black,
            ),
            ParrafoGrande(
              'constante cambio impredecible empieza a disiparse. Experimentamos el gusto de la verdadera liberación: liberación de la tiranía de nuestra mente y sus fluctuantes emociones. Al hacer esta tarea,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'nos recordamos que tenemos que tomarnos a la ligera. La marcha tonta saca nuestra mente de su preocupación por nosotros mismos y nuestros problemas y cambia la perspectiva. Podemos aprender a cambiar nuestros',
              color: Colors.black,
            ),
            ParrafoGrande(
              'estados de ánimo y nuestros pensamientos poco sanos por nosotros mismos, sin ningún equipo o gasto. Como cualquier habilidad, requiere tiempo y mucha práctica.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.personWalking,
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
