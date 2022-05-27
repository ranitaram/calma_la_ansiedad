import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento20 extends StatefulWidget {
  @override
  State<Descubrimiento20> createState() => _Descubrimiento20State();
}

class _Descubrimiento20State extends State<Descubrimiento20> {
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
              Color.fromARGB(255, 29, 162, 115),
              Color.fromARGB(255, 118, 56, 138),
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
              'Esta tarea nos ayuda a ver con qué frecuencia tomamos una posición que es negativa o de oposición. Si fuéramos capaces de observar nuestra mente cuando alguien nos habla, en particular, si nos están pidiendo que hagamos algo,',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'podríamos ver que nuestros pensamientos forman defensas y contraargumentos. Nuestra habitual postura de oposición puede asumir la forma de pensamientos (“No estoy de acuerdo con lo que está diciendo”),',
              color: Colors.white,
            ),

            ParrafoGrande(
              'lenguaje corporal (tensión muscular, brazos cruzados), o acción (sacudir la cabeza, dar vuelta los ojos, ignorar a quién está hablando). En ciertas profesiones la gente informa que tiene dificultad con esta tarea.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Los abogados, por ejemplo, están entrenados para detectar fallas en un contrato o errores en lo que dice un testigo u otro abogado. Los académicos están entrenados para criticar las teorías y las investigaciones de otros.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'El éxito en el trabajo puede depender de una “Mente que ataca”, pero cuando uno pasa todo el día cultivando esta actitud, puede resultar difícil apagarla cuando uno llega a casa. Una persona dijo que decir si creaba una experiencia de paz,',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'de seguir la corriente de la gente que entraba en su oficina en lugar de resistirse. Otra halló que decir si era liberador porque le permitía soltar todo el esfuerzo interno involucrado en tomar una decisión. Se sentía',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),

            ParrafoGrande(
              'generoso. No expresar oposición nos ayuda a soltar puntos de vista egoístas y ver qué nuestra opinión personal en realidad no es tan importante después de todo. Es sorprendente con cuanta frecuencia nuestro desacuerdo con',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'otra persona no es realmente relevante y solo sirve para aumentar nuestra angustia y el sufrimiento de quienes nos rodean. Decir sí puede ser energizante, pues la resistencia habitual es un drenaje persistente de nuestra energía vital.',
              color: Colors.white,
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            const SizedBox(
              height: 20,
            ),

            Parrafo(
                'Cultiva una actitud interna de decir “sí” a la vida y a todo lo que te trae. Te ahorrará mucha energía.'),
            BotonGordo(
                icon: FontAwesomeIcons.stripeS,
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
