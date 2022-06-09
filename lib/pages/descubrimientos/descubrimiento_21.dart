import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento21 extends StatefulWidget {
  @override
  State<Descubrimiento21> createState() => _Descubrimiento21State();
}

class _Descubrimiento21State extends State<Descubrimiento21> {
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
              Color.fromARGB(255, 74, 199, 237),
              Color.fromARGB(255, 8, 102, 216),
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
              'La gente informa que, cuando se acuerda de observar el color azul alrededor, parece como si este saltara delante de ellos y los objetos azules se destacan como si se hubieran vuelto más tridimensionales.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Esta tarea también lleva a un nuevo aprecio del cielo, el enorme tazón azul que ignoramos la mayor parte del tiempo, aunque suele conformar una gran parte de nuestro campo visual. El brillante cielo azul',
              color: Colors.black,
            ),
            ParrafoGrande(
              'siempre está sobre nosotros, aun cuando esté nublado o lloviendo. Nos damos cuenta de esto cuándo estamos volando y el avión asciende a través de las nubes bajas y de pronto surge bajo la luz brillante del sol.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Cuando nos acordamos de abrir nuestra conciencia al color azul, este parece volverse más vívido y más omnipresente. Cuando nos encontramos atrapados en el mundo imperioso y complejo de la pantalla interna de nuestra mente,',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'tenemos que recordar que hay una opción. Podemos disminuir o “minimizar” la pantalla actual y convertirla en un pequeño ícono en la parte inferior de nuestra pantalla mental y abrirnos al sereno cielo azul de nuestra mente clara,',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'inherentemente ilimitada. Algunos pensamientos se deslizan por la pantalla, como tenues nubes blancas. Nos elevamos por encima del mundo estrecho del “yo, mí, mío” a un lugar de serenidad. El pequeño ícono de nuestras',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'preocupaciones y planes puede abrirse Siempre que lo deseemos. Así como el cielo azul está siempre sobre nosotros, aun cuando no podamos verlo, lo mismo ocurre con nuestra perfecta Naturaleza Original.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Aunque nuestro estado mental esté nublado y nuestras emociones estén lloviendo, nuestra Naturaleza Original siempre está allí, brillando con fuerza dentro de nosotros y de todas las cosas.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.bold,
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
