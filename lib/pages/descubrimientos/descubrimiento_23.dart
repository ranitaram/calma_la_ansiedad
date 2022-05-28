import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento23 extends StatefulWidget {
  @override
  State<Descubrimiento23> createState() => _Descubrimiento23State();
}

class _Descubrimiento23State extends State<Descubrimiento23> {
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
              Color.fromARGB(255, 225, 159, 46),
              Color.fromARGB(255, 120, 108, 108),
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
              'Comúnmente nuestro foco está en los objetos. Dentro de una casa, nos concentramos en las personas, los animales, los muebles, los aparatos, la vajilla, etcétera. Afuera, tenemos todavía visión en túnel y',
              color: Colors.black,
            ),
            ParrafoGrande(
              'nos centramos en los edificios, los árboles y las plantas, los vehículos, los animales, los caminos, las señales y la gente. Se necesita hacer un esfuerzo para desplazar la conciencia al espacio que rodea a',
              color: Colors.black,
            ),
            ParrafoGrande(
              'todos estos objetos o el que hay dentro de las habitaciones. Abrir la mente a este espacio es de algún modo relajante. ¿Nuestra ansiedad está vinculada con los objetos? Nuestra identidad está vinculada con objetos,',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'objetos que refuerzan nuestra sensación de yo. “Soy coleccionista de libros”, “Tengo el último reproductor de música”, “Tengo hermosas obras de arte colgadas en mis paredes”, “Tengo cinco gatos”.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Pasamos todo el día relacionándonos con objetos. Nuestro deseo se concentra en las cosas, los animales y las personas que queremos para ocupar el espacio que nos rodea. Rara vez damos un paso atrás y vemos el fondo,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'el espacio vacío que constituye la mayor parte de una habitación, un edificio, o una vista exterior. Cuando somos capaces de desplazar nuestra conciencia al espacio que rodea a los objetos, se produce una sensación de alivio.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Nuestro sufrimiento está vinculado a los objetos, a los deseos de obtenerlos, de mantenerlos, de cambiarlos, de deshacernos de ellos. Siempre que nos encontramos aferrados a objetos, sean físicos o mentales',
              color: Colors.black,
            ),
            ParrafoGrande(
              '—como los pensamientos y las emociones—, estamos aferrándonos a las semillas del sufrimiento. Si podemos liberar ese apego, revertir nuestro foco y tomar conciencia del fondo de vacío, de posibilidad,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'podemos prevenir que la angustia y la pena crezcan dentro de nosotros. Permite que la mente se vuelva espaciosa. No te distraigas o te engañes con su contenido.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.creativeCommonsZero,
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
