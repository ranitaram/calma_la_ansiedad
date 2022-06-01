import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento47 extends StatefulWidget {
  @override
  State<Descubrimiento47> createState() => _Descubrimiento47State();
}

class _Descubrimiento47State extends State<Descubrimiento47> {
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
              Color.fromARGB(255, 242, 118, 41),
              Color.fromARGB(255, 167, 75, 232),
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
              'Cuando observamos profundamente la comida, tomamos conciencia de nuestra completa dependencia de la energía vital de incontables seres. Si haces una pausa para contemplar una sola pasa en el plato de cereal y',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'cuentas la cantidad de personas que estuvieron involucradas en llevarla hasta ti, retrocediendo hasta la persona que plantó, podó y desmalezó la parra donde creció, suman por lo menos doce.',
              color: Colors.black,
            ),
            ParrafoGrande(
              '¿Cómo podemos pagar a tantos seres? No con dinero. Si pagamos a cada persona que manipuló esta pasa un dólar, las pasas serían solo comida de reyes. ¿Podemos al menos honrarlos con nuestra conciencia agradecida,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'con el reconocimiento presente de su trabajo arduo antes de empezar a comer? Una persona que practica el estar presente puede ver cosas en una mandarina que otros son incapaces de ver.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Una persona consciente puede ver el árbol de mandarina, los brotes del árbol de mandarina en la primavera, la luz del sol y la lluvia que lo nutrieron. Al observar profundamente,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'uno puede ver las diez mil cosas que han hecho posible la mandarina... y cómo todas estas cosas interactúan entre sí. La energía vital de muchos seres fluye hacia nosotros cuando comemos.',
              color: Colors.black,
            ),
            Parrafo(
                '¿Cómo es la mejor manera de pagarles? Estando plenamente presentes cuando comemos.',
                color: Colors.black),
            BotonGordo(
                icon: FontAwesomeIcons.pizzaSlice,
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
