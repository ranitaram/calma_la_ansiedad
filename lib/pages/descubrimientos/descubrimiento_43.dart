import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento43 extends StatefulWidget {
  @override
  State<Descubrimiento43> createState() => _Descubrimiento43State();
}

class _Descubrimiento43State extends State<Descubrimiento43> {
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
              Color.fromARGB(255, 146, 230, 10),
              Color.fromARGB(255, 225, 166, 18),
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
              'Si tienes problemas para observar qué hace tu lengua, te ayudará el reducir los movimientos a propósito y luego empezar a comer nuevamente muy despacio para ver qué sucede. ¿Es posible que bebas un trago,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'metas un bocado de comida, mastiques o tragues sin la ayuda de la lengua? La gente descubre que si impide que la lengua se mueva y trata de tragar, masticar se vuelve un movimiento inútil de los dientes',
              color: Colors.black,
            ),
            ParrafoGrande(
              'hacia arriba y hacia abajo. La lengua es un pequeño ser muy activo. Casi nunca descansa. Nos ayuda mucho durante las comidas, para masticar, tragar, saborear y limpiar. Se mueve rápido entre los dientes,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'mezclando, trasladando y dividiendo la comida en forma pareja entre ambos lados. Actúa como un pequeño conserje, recorriendo con su punta sensible los rincones de la boca en busca de pequeños restos de comida,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'revisando que los dientes están limpios. La práctica de la lengua es uno de los mejores ejemplos del poder del estar presente. Cuando concentramos la mente quieta en algo, esa pequeña cosa se abrirá y',
              color: Colors.black,
            ),
            ParrafoGrande(
              'revelará todo un universo, un universo que siempre estuvo allí. En el caso de la lengua, literalmente estaba escondida justo debajo de la nariz. Comúnmente no somos conscientes de la lengua',
              color: Colors.black,
            ),
            ParrafoGrande(
              'mientras lleva a cabo sus múltiples tareas. La lengua opera mejor cuando se deja sola. Este es un buen ejemplo de cómo las cosas funcionan mejor si nos salimos de su camino y no tratamos de controlarlas.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'No hay forma de que podamos dirigir la lengua para que haga su trabajo. Seguramente, en la medida en que tomemos conciencia de la vida escondida de nuestra lengua, también podremos, a través de la práctica.',
              color: Colors.black,
            ),
            Parrafo(
              'Toma conciencia de las muchas bendiciones de nuestra vida.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.gamepad,
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
