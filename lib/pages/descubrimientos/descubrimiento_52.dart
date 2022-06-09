import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento52 extends StatefulWidget {
  @override
  State<Descubrimiento52> createState() => _Descubrimiento52State();
}

class _Descubrimiento52State extends State<Descubrimiento52> {
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
              Color.fromARGB(255, 225, 237, 4),
              Color.fromARGB(255, 189, 189, 188),
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
              'Algunas personas sienten resistencia a hacer este ejercicio. Sienten que es “falso” o poco natural sonreír todo el tiempo. Si se ven al espejo varias veces al día, sin embargo,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'pueden sorprenderse bastante al encontrar que todo el tiempo suponían que su cara tenía un aspecto agradable, pero su expresión habitual era en realidad negativa:',
              color: Colors.black,
            ),
            ParrafoGrande(
              'un ligero entrecejo fruncido, las esquinas de la boca curvadas hacia abajo como en desaprobación. Una vez que la gente se da cuenta de esto, a menudo se disponen a ajustar su cara a una imagen más positiva.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Hay mucha investigación interesante sobre la sonrisa. En todas las culturas humanas, la sonrisa expresa felicidad. Sonreír es innato, no aprendido. Todos los bebés comienzan a sonreír a los cuatro meses más o menos,',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'incluso si son ciegos de nacimiento. Los bebés muestran diferentes sonrisas cuando ven a sus madres (“genuinas”) y cuando se le acercan extraños (las sonrisas “sociales” que involucran la boca, pero no los ojos).',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Las sonrisas son poderosas señales sociales. Las personas a las que se les muestran imágenes de diferentes grupos étnicos se inclinan de un modo más positivo hacia cualquier grupo que sonría. Las sonrisas ayudan a disipar el',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'enojo de los otros; pueden distinguirse de las expresiones faciales negativas a cientos de metros: la distancia del lanzamiento de una lanza. La investigación muestra que sonreír tiene muchos efectos fisiológicos beneficiosos.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Baja la presión arterial, fortalece el sistema inmunológico y libera los analgésicos naturales (endorfinas) y un antidepresivo natural (serotonina). La gente que sonríe de manera sincera vive, en promedio,',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'siete años más que aquellos que no tienen el hábito de sonreír. Sonreír también hace que la gente te vea como alguien más atractivo, más exitoso, más joven y como alguien que le gusta.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Cuando sonreímos, esto no solo afecta los estados de ánimo de otros, sino también nuestras propias emociones. Hay retroalimentación de los músculos faciales al cerebro.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'La investigación sobre la sonrisa muestra que controlar la cara puede ayudar a controlar la mente y las emociones que produce. Si sonreír tiene efectos positivos tan claros en nosotros',
              color: Colors.black,
            ),
            ParrafoGrande(
              'y en quienes nos rodean, quizás debamos realizar una “seria” práctica de la sonrisa durante toda la vida.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.faceSmile,
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
