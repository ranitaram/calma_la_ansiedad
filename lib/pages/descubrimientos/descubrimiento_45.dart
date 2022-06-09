import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento45 extends StatefulWidget {
  @override
  State<Descubrimiento45> createState() => _Descubrimiento45State();
}

class _Descubrimiento45State extends State<Descubrimiento45> {
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
              Color.fromARGB(255, 147, 57, 57),
              Color.fromARGB(255, 14, 152, 92),
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
              'La gente suele sorprenderse al descubrir que la ansiedad es una compañera más constante de lo que pensaban en sus vidas. La ansiedad es tan dominante en la cultura moderna que la gente no suele darse cuenta de ella',
              color: Colors.white,
            ),
            ParrafoGrande(
              'hasta que su mente se aquieta y sintoniza más, a través de la práctica de estar presente, con los cambios en el cuerpo y en la mente. Puede emerger cuando suena el despertador o con el primer timbre del teléfono.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Algunas personas descubren que se levantan ya ansiosas. Una mujer dijo: “La ansiedad está a los pies de la cama, esperando para atacar tan pronto como abro los ojos. Si mantengo los ojos cerrados, puedo postergarla.”',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Otras descubren que la ansiedad está esperándolas en las noticias matutinas, en la primera taza de café, o las persiguen mientras viajan al trabajo. La gente es capaz de reconocer y',
              color: Colors.white,
            ),
            ParrafoGrande(
              'luego de observar episodios de ansiedad en ellos, comienza a ver patrones, ciertos tipos de eventos o situaciones que son la semilla desde donde crece rápidamente la ansiedad.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'A menudo estas semillas se plantaron en la infancia. Un hombre cuyo hermano lo ahogó casi hasta morir en un juego infantil tomó conciencia de la ansiedad que surgía siempre que usaba cuellos apretados o suéteres de cuello alto.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Es muy importante aprender a reconocer la ansiedad en sus manifestaciones más tempranas, y desarrollar herramientas para disiparla. La respiración profunda es un antídoto poderoso. Tenemos que mirar en el fondo de la',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'ansiedad para ver claramente a través de ella. La ansiedad siempre va acompañada de pensamientos, aunque esos pensamientos pueden ser una forma de diálogo interno demasiado sutil para detectar al principio.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Los pensamientos pueden dar surgimiento a la ansiedad y también pueden hacerla escalar. Cuando vemos que la ansiedad está trepando, tomamos conciencia: “Ah, la ansiedad está presente.”',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Cómo mantener la ansiedad depende de los pensamientos, pasamos la mente de estos a una práctica sanadora que los contrarreste, por ejemplo, la respiración profunda o la bondad amorosa.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Poco a poco aprendemos a detectar y desarmar antes nuestra ansiedad. Los patrones de hábito o “surcos en la mente” que se han creado se debilitan, y la ansiedad ya no nos tiene atrapados.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Algunas personas dicen: “Bien, si suelto la ansiedad, dejaré de hacer planes para el futuro. El solo pensar en soltar la ansiedad me pone ansioso. Están confundiendo soltar la ansiedad con',
              color: Colors.white,
            ),
            ParrafoGrande(
              'soltar la planificación. La ansiedad y la planificación son cosas totalmente diferentes. La ansiedad es el sufrimiento que la mente acumula sobre la planificación.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'En realidad, la ansiedad interfiere con la buena planificación. La ansiedad es egocéntrica y nos hace perder la objetividad. Los buenos planes surgen de la objetividad, no de la emoción.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Aquí hay una clave importante sobre cómo aflojar los dedos de la ansiedad que se aferran al corazón. Encuentra una forma de pasar del pensamiento a la experiencia. En particular, pasa a experimentar con el cuerpo,',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'sintiendo el flujo de la respiración, escuchando los sonidos, obvios y sutiles, mirando los colores y patrones de luz y oscuridad. Cuando estamos verdaderamente presentes,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'el tiempo parece disminuir la velocidad y todo se vuelve más vívido. Una cosa sigue a la otra en perfecto orden, nuestras preocupaciones desaparecen. Todo está bien de nuevo.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'La ansiedad es el sutil e invasivo destructor de la felicidad. Depende de los pensamientos pasados y futuros. No puede existir en el presente.',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.faceSadCry,
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
