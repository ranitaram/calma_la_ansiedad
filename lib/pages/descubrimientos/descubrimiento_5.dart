import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/top_bar.dart';

class Descubrimiento5 extends StatefulWidget {
  @override
  State<Descubrimiento5> createState() => _Descubrimiento5State();
}

class _Descubrimiento5State extends State<Descubrimiento5> {
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
              Color.fromARGB(255, 255, 143, 7),
              Color.fromARGB(255, 220, 237, 32)
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
              'Esté desafío, tiene su grado de dificultad para la mayoría de la gente. Si estás fuera de tu casa y estás cerca de darle un sorbo a tu bebida, vas a necesitar detenerte y encontrar un lugar para saborearlo,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'si estás trabajando tendrás que dejar un momento lo que estés haciendo para poder degustar de tu alimento o bebida. Con este reto nos damos cuenta de que se ha convertido en un hábito hacer muchas cosas mientras comemos y eso hace que',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'no estemos disfrutando el presente y degustar todos esos sabores de nuestros alimentos por las prisas de estar haciendo otras cosas. Es tan común socializar mientras comemos que quizás descubras que te sientes extraño comiendo sin hacer',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'otra cosa más que solamente comer. parece que nuestra autoestima se basa en cuanto podemos producir en un día, comer y beber son actividades que no nos hacen ganar dinero y por eso comenzamos a pensar que no tiene valor',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            Parrafo(
              'Disfruta cada momento de tus alimentos.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.utensils,
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
