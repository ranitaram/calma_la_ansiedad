import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento51 extends StatefulWidget {
  @override
  State<Descubrimiento51> createState() => _Descubrimiento51State();
}

class _Descubrimiento51State extends State<Descubrimiento51> {
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
              Color.fromARGB(255, 1, 160, 158),
              Color.fromARGB(255, 101, 65, 3),
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
              'Mucha gente siente resistencia a hacer esta práctica. Siempre se “olvidan” de hacerla. Finalmente, descubren que, debajo de la resistencia, hay aversión hacia su cuerpo.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Durante toda la vida, todos hemos sido alimentados con imágenes de cuerpos perfectos, y de personas cuya juventud, riqueza, cirujanos o esteroides les permiten crear esos cuerpos.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Nuestros cuerpos comunes no pueden compararse y se acumula en la mente un sutil resentimiento hacia el cuerpo. Mi vientre tiene demasiada grasa, mis pechos no tienen el tamaño adecuado, mis piernas son demasiado cortas,',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'mi pelo o mis ojos son del color equivocado. Esta solía ser una lucha principalmente de las mujeres, pero la publicidad ha infectado también a los hombres con esta dominante insatisfacción.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Nada puede prosperar bajo un bombardeo de energía negativa, ni los niños, ni las mascotas, ni las plantas en macetas, ni nuestro cuerpo. Cuando su apariencia no satisface los estándares de nuestro Perfeccionista Interno o',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'nuestro Crítico Interno, podemos comenzar a sentirnos sutilmente frustrados o enojados contra él. También puede ocurrir esto cuando una parte del cuerpo tiene un problema, por ejemplo, una lesión o una enfermedad.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Comenzamos a temer o a resentir el cuerpo. Esto no es un ambiente sano para nuestro cuerpo y hasta puede crear enfermedades. La tensión mental crea tensión física, que restringe el flujo sanguíneo y contrae los músculos.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'A menudo las personas se resisten a brindarse bondad amorosa. Siente que es algo egoísta y que deberían estar haciendo algo por otros que están en una situación peor.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'La bondad amorosa hacia uno mismo no es egoísta. Es el prerrequisito para extenderla a los demás. Si nuestra reserva de bondad amorosa está llena, rebasará naturalmente e inundará a los otros.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Haz la práctica de bondad amorosa con tu cuerpo al menos una vez por día, todos los días. Es la mejor clase de medicina alternativa.',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.userLarge,
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
