import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/custom_parrafo.dart';
import '../../widgets/top_bar.dart';

class Descubrimiento15 extends StatefulWidget {
  @override
  State<Descubrimiento15> createState() => _Descubrimiento15State();
}

class _Descubrimiento15State extends State<Descubrimiento15> {
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
              Color.fromARGB(255, 4, 104, 162),
              Color.fromARGB(255, 158, 84, 123),
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
              'Una vez que hayas asumido esta tarea con seriedad, comienzas a buscar ideas nuevas y las posibilidades empiezan a multiplicarse. Hay entusiasmo al tratar de no ser atrapado, pero también,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'como algunas personas admitieron, puede haber algo de decepción al no ser atrapado o reconocido. Es todavía más interesante quedarse en silencio cuando a alguien más se le agradece por el regalo que hemos dado anónimamente.',
              color: Colors.white,
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Todas las religiones valoran la generosidad. La Biblia dice que es mejor dar que recibir. Nuestra personalidad se constituye a través de muchas estrategias para hacer que los otros nos amen y nos cuiden,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'para obtener lo que queremos y para mantenernos a salvo. Disfrutamos del reconocimiento positivo, pues indica amor, éxito y seguridad. Esta tarea nos ayuda a observar cuán dispuestos estamos a',
              color: Colors.white,
            ),
            ParrafoGrande(
              'poner nuestro esfuerzo en hacer cosas buenas para los demás si nunca nos dan crédito por ellas. La generosidad es la virtud más elevada, y dar anónimamente es la forma más elevada de generosidad,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'hacer regalos simples, agua pura para beber, comida, refugio, ropa, transporte, luz, flores. Hasta las personas pobres pueden ser generosas, decía, dando una migaja de su comida a una hormiga.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Hasta las personas pobres pueden ser generosas, decía, dando una migaja de su comida a una hormiga. Cada vez que damos algo, sea un objeto material o nuestro tiempo (¿es “nuestro”?), estamos soltando un poco de esa pila temporal de cosas,',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),

            Parrafo(
              'cuidadosamente reunida y ferozmente defendida, que llamamos “yo, mi, mío”.',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.question,
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
