import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento33 extends StatefulWidget {
  @override
  State<Descubrimiento33> createState() => _Descubrimiento33State();
}

class _Descubrimiento33State extends State<Descubrimiento33> {
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
              Color.fromARGB(255, 9, 197, 230),
              Color.fromARGB(255, 237, 85, 4),
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
              'Al hacer este ejercicio, observamos nuestra aversión a las temperaturas que están fuera de un pequeño rango. El rango de cada persona es diferente. Nos quejamos: “¡Hace mucho calor!” o “¡Hace mucho frío!”,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'como si no debiera ser de ese modo: el sol, las nubes y el viento han conspirado para ponernos incómodos. Siempre estamos haciendo algo para ajustar la temperatura, encendiendo y apagando la calefacción o el aire acondicionado,',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'abriendo y cerrando ventanas y puertas, poniéndonos y sacándonos ropa. Nunca estamos satisfechos por mucho tiempo. Cuando la temperatura supera los 30 grados, anhelamos el clima más fresco,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'durante los inviernos fríos y lluviosos, anhelamos el sol. Una forma muy importante de trabajar con la incomodidad es dejar de evitarla. Camina directo hacia ella, y siente desde dentro del cuerpo lo que es verdad.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Investiga la incomodidad, su tamaño, su forma, su textura superficial y hasta su color o sonido. ¿Es constante o intermitente? Cuando tienes este nivel de atención, cuando tu absorción meditativa es profunda,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'lo que llamamos incomodidad o dolor comienza a cambiar e incluso a desaparecer. Se convierte en una serie de sensaciones que solamente aparecen y desaparecen en un espacio vacío, titilando.  Es sumamente interesante.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Nos esforzamos demasiado tratando de lograr que las condiciones externas se adecuen a nosotros. Sin embargo, nos es imposible permanecer cómodos todo el tiempo, pues la naturaleza de todas las cosas es el cambio.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Este intento de control está en el centro de nuestro agotamiento físico y de nuestra angustia emocional. Quizás parezca extraño, pero puedes estar practicando el estar presente con incomodidad o dolor y ser bastante feliz.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Esta felicidad proviene del placer de solo estar presente, y también de la confianza que estás ganando... confianza en que, con la práctica que estás haciendo, eventualmente serás capaz de enfrentar cualquier cosa que la vida',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'te traiga, incluso el dolor, ayudado por herramientas como el estar presente. Cuando tu mente dice “mucho calor” o “mucho frío”, no le creas. Investiga la experiencia de calor y frío en todo el cuerpo.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.cloudSunRain,
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
