import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/top_bar.dart';

class Descubrimiento10 extends StatefulWidget {
  @override
  State<Descubrimiento10> createState() => _Descubrimiento10State();
}

class _Descubrimiento10State extends State<Descubrimiento10> {
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
              Color.fromARGB(255, 155, 159, 160),
              Color.fromARGB(255, 46, 36, 228),
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
              'Casi todos tomamos el teléfono de inmediato cuando empieza a sonar y respondemos lo más pronto posible, es muy difícil al comienzo detener este hábito, hacer una pausa y respirar.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Realizar unas respiraciones cuando el teléfono suena es un nuevo hábito muy práctico, en especial si tu trabajo requiere hablar con personas difíciles, pero con la práctica de la respiración antes de contestar la llamada te',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'ayuda a vaciar tu mente y prepararla para brindarle toda tu atención de una manera relajada y consiente a la persona que te está llamando. Esta es una tarea poderosa porque invoca a una repentina inmovilidad en el cuerpo y a una',
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            ParrafoGrande(
              'repentina inmovilidad en el alma al mismo tiempo. Cuando nos movemos, habitualmente estamos pensando. Cuando el cuerpo se detiene, un nivel sutil del pensamiento en curso se revela. Esto ayuda a soltar la tensión mental, mientras que disfrutar de 3 ',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'respiraciones, ayuda a liberar la tensión física. Gran parte de nuestra vida es vivida inconscientemente y con prisa, en lugar de vivir plenamente en este momento, siempre estamos yendo hacia adelante,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'atrapando el minuto siguiente, la hora siguiente, el día siguiente. Arrastramos nuestro estado mental como una bolsa de basura, de un encuentro al siguiente. Si acabamos de colgar después de una llamada difícil,',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'es probable que estemos malhumorados con la desventurada persona que llama después. Esta es una habilidad sumamente útil, que la mayoría de la gente no tiene. Nos permite hacer que se desvanezcan los hábitos viejos y',
              color: Colors.white,
            ),
            Parrafo(
              'dañinos mientras cultivamos los nuevos y saludables.',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.phone,
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
