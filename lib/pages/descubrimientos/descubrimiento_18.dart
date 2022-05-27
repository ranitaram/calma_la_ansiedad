import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento18 extends StatefulWidget {
  @override
  State<Descubrimiento18> createState() => _Descubrimiento18State();
}

class _Descubrimiento18State extends State<Descubrimiento18> {
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
              Color.fromARGB(255, 74, 77, 73),
              Color.fromARGB(255, 100, 74, 225),
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
              'Notamos que los árboles están por todas partes, y sus formas son complejas y variadas. Es una maravillosa tarea de conciencia en sí misma observar en los diferentes tonos de verde de los árboles y plantas que pasamos. Notamos como',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'los árboles cambian con las estaciones. La conciencia de nuestra continua relación de ínter respiración con árboles y plantas verdes pueden brindarnos una conciencia vívida de nuestra interconexión con todos los seres.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Si los árboles desaparecieran, lo notaríamos rápidamente, porque nos acaloraríamos excesivamente, nos enfermaríamos y moriríamos. Un árbol joven brinda el efecto refrescante de diez aires acondicionados del',
              color: Colors.white,
            ),
            const SizedBox(height: 20),
            ParrafoGrande(
              'tamaño de una habitación. Los árboles trabajan con nosotros, tomando el dióxido de carbono que exhalamos y liberando oxígeno. Un acre de árboles produce cuatro toneladas de oxígeno por año, lo suficiente para ',
              color: Colors.white,
            ),
            ParrafoGrande(
              'mantener a dieciocho personas respirando felizmente. Una serie de estudios han demostrado que ver ambientes naturales que tienen árboles solo durante tres minutos, o incluso observar imágenes de árboles, puede bajar la',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'presión sanguínea, relajar la tensión muscular, bajar los niveles de miedo y enojo, reducir el dolor, aliviar el estrés y disminuir el tiempo de recuperación después de una cirugía.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Esta práctica, abrir nuestra conciencia a todos los seres vivos que nos rodean, puede ser un antídoto para la penetrante sensación de soledad que nos invade a tantos. Incluso en la ciudad hay animales,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'pájaros, plantas e insectos a nuestro alrededor. Dentro de nuestro cuerpo hay miles de millones de seres vivos, la mayoría de ellos beneficiosos. Su vida está entrelazada con la nuestra, y ellos son necesarios para nuestra salud y ',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
                'nosotros para la de ellos. Cuando nuestra mente se encierra en las preocupaciones del “yo, mi, mío”, creamos soledad. Cuando abrimos el corazón a la conciencia de todos esos seres con los que estamos conectados,'),
            const SizedBox(
              height: 20,
            ),
            Parrafo('nuestra soledad desaparece. Nunca estás solo.'),
            BotonGordo(
                icon: FontAwesomeIcons.tree,
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
