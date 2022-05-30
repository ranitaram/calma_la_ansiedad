import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento35 extends StatefulWidget {
  @override
  State<Descubrimiento35> createState() => _Descubrimiento35State();
}

class _Descubrimiento35State extends State<Descubrimiento35> {
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
              Color.fromARGB(255, 255, 44, 7),
              Color.fromARGB(255, 225, 169, 203),
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
              'Al hacer este ejercicio, encontramos que la aversión es más común en nuestro paisaje mental/emocional de lo que reconocemos. Puede empezar con nuestro día, y surgir cuando suena el despertador,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'o cuando salimos de la cama y descubrimos que nos duele la espalda. Puede desencadenarse a causa de hechos que aparecen en los noticieros matutinos, por una fila larga en el metro o en la estación de gasolina,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'o por un encuentro con la familia, los compañeros de trabajo o los clientes. Puede dejarnos consternados descubrir cuán extendida está la aversión, incluso en un solo día de una vida, que podríamos describir como feliz.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Es, sin embargo, muy importante tomar conciencia de que los sentimientos de desagrado son ubicuos en nuestra vida cotidiana. La aversión es uno de los tres estados mentales que causan aflicción,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'descritos en la tradición budista: codicia (o apego), aversión (o rechazo) y falsa ilusión (o ignorancia). Se dice que causan aflicción porque nos afligen del mismo modo que lo hace un virus, provocando angustia y dolor no solo para nosotros,',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'sino para aquellos que nos rodean. La aversión es la fuente oculta del enojo y la agresión. Surge de la noción de que, si solamente lográramos deshacernos de algo o de alguien, entonces seríamos felices.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Aquello de lo que los humanos queremos deshacernos para ser felices puede ser algo tan trivial como un mosquito o tan grande como una nación. Nuestro “perfecto” no es perfecto para todos los demás.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Forzar la perfección en el mundo está destinado al fracaso debido a la verdad de la impermanencia: nada dura para siempre. La práctica del estar presente nos ayuda a estar en paz más allá de las condiciones',
              color: Colors.white,
            ),
            ParrafoGrande(
              'existentes y más allá de cómo cambien. Nos pide que veamos la perfección en toda la creación. Nos pide que nos volvamos conscientes de la aversión y la contrarrestemos con reconocimiento y',
              color: Colors.white,
            ),
            ParrafoGrande(
              'bondad amorosa. “El enojo no cesa a través del enojo, sino solo a través del amor.” Toma conciencia de la aversión que tienes adentro y usa el antídoto: practica la bondad amorosa.',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.faceAngry,
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
