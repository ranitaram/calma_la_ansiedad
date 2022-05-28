import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento32 extends StatefulWidget {
  @override
  State<Descubrimiento32> createState() => _Descubrimiento32State();
}

class _Descubrimiento32State extends State<Descubrimiento32> {
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
              Color.fromARGB(255, 29, 29, 29),
              Color.fromARGB(255, 67, 67, 63),
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
              'Algunas personas consideran que este ejercicio es un poco deprimente al principio, pero pronto descubren que, cuando toman conciencia de su propia mortalidad y de la persona con quien estás hablando, escuchan y prestan atención',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'de un modo diferente. Se les abre el corazón al pensar que, de verdad, esta podría ser la última vez que vieran viva a esta persona. Cuando hablamos con gente, en especial con la que vemos a diario, solemos distraernos fácilmente y escuchar a',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'medias. Esta práctica se vuelve particularmente conmovedora cuando la persona con la que estás hablando es mayor o está enferma, o cuando la muerte se ha llevado hace poco a un conocido o a alguien que amabas.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Cuando los japoneses se despiden de alguien, se quedan de pie con respeto, observando y saludando hasta que el coche o el tren está fuera de la vista. Esta costumbre tiene su origen en la conciencia de',
              color: Colors.white,
            ),
            ParrafoGrande(
              'que esa podría ser la última vez que se vieran uno a otro. ¡Qué triste nos sentiríamos si nuestro último encuentro con nuestro hijo, cónyuge o padre, estuviera teñido de impaciencia o enojo!',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Cuán consolador si hubiéramos dicho adiós cuidadosamente. Aunque la enfermedad, la vejez y la muerte llegan a todos los que han nacido en este mundo, vivimos la vida como si esto no fuera cierto para nosotros y',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'aquellos que queremos. Esta práctica nos ayuda a romper con la negación de que la vida humana es bastante frágil y la muerte puede aparecer en cualquier momento. Lo único que se necesita es un ligero cambio en el nivel de potasio en la',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'sangre, una bacteria virulenta, un conductor de frente que se queda dormido, o un extraño patrón eléctrico en el corazón. En ocasiones, el velo de la negación se levanta y vemos la verdad de',
              color: Colors.white,
            ),
            ParrafoGrande(
              'la fragilidad de la vida humana, como cuando diagnostican a un compañero de trabajo o a un miembro de la familia con una enfermedad fatal o cuando muere inesperadamente alguien de nuestra edad o más joven.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Por supuesto, no queremos llenar nuestra mente con ansiosos pensamientos constantes sobre la mortalidad, pero la conciencia de la impermanencia puede ayudarnos a valorar a la gente que encontramos todos',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'los días. Cuando el velo se levanta, y experimentamos la verdad de que toda vida humana es breve, nuestras conversaciones cambian. En lugar de hablarle a alguien, con la mente medio llena de otros pensamientos,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'aportamos más presencia en cada encuentro. Esta atención silenciosa es algo inusual en el mundo de los seres humanos comunes. Tomar conciencia de la muerte nos abre a este singular y vívido momento de la vida.',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.masksTheater,
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
