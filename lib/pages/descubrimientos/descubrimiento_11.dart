import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/top_bar.dart';

class Descubrimiento11 extends StatefulWidget {
  @override
  State<Descubrimiento11> createState() => _Descubrimiento11State();
}

class _Descubrimiento11State extends State<Descubrimiento11> {
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
              Color.fromARGB(255, 74, 228, 74),
              Color.fromARGB(255, 244, 31, 16),
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
              'Cuando empezamos a realizar este desafío, pronto tomamos conciencia de cuando no usamos manos cariñosas, nos percatamos de cómo arrojamos los productos al carro de compras,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'como aventamos la mochila o bolsa cuando llegamos a la casa, cómo aventamos los cubiertos al cajón y así podríamos seguir con muchos ejemplos. Mientras hacemos esta práctica, la presencia de una caricia amorosa se expande para incluir la',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'conciencia no solo de cómo tocamos las cosas, sino también de cómo somos tocados. Esto incluye no solamente como somos tocados por manos humanas, sino también de cómo somos tocados por la ropa, el viento, la comida y la',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'bebida en la boca, el piso bajo los pies y muchas otras cosas. Sabemos tocar con manos cariñosas a nuestras mascotas, a bebés. A nuestra pareja con ternura y cuidado. ¿Por qué no utilizamos esa caricia todo el tiempo? ',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              '¿Por qué no podemos vivir de este modo todo el tiempo? Muchas veces al día nos tocan, pero la mayor parte del tiempo no somos consientes de eso, únicamente lo notamos cuando es incómodo.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'En Japón, los objetos suelen estar personificados. Se honran muchas cosas y se les trata con cuidado amoroso, cosas que nosotros consideraríamos inanimadas y, por lo tanto, no merecedoras de respeto y menos aún de amor.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Debemos de manipular todas las cosas como si estuvieran vivas. Este desafío si te lo tomas muy en serio será capaz de ampliar tu conciencia y tratar todo y a todos con respeto y el cuidado que se merecen.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Ten el cuidado amoroso y generoso con todo lo que tocas. Cuando estamos apurados o molestos con alguien, convertimos al otro en un objeto. Salimos apurados de la casa sin decir adiós a alguien que amamos,',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'ignoramos el saludo de un compañero de trabajo porque tuvimos una discusión el día anterior. Así es como las otras personas se deshumanizan, se convierten en una molestia, un obstáculo y en última instancia, en un enemigo.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.handsPraying,
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
