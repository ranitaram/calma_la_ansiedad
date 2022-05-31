import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento40 extends StatefulWidget {
  @override
  State<Descubrimiento40> createState() => _Descubrimiento40State();
}

class _Descubrimiento40State extends State<Descubrimiento40> {
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
              Color.fromARGB(255, 137, 142, 136),
              Color.fromARGB(255, 20, 72, 68),
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
              'Cuando prestamos atención, vemos señales de envejecimiento en todas partes. La fruta se pudre, los pétalos de las flores se marchitan y caen, los edificios decaen y los autos se oxidan.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Después de los treinta, los jóvenes informan su consternación porque el cuerpo ya no se desempeña tan bien o se cura tan rápido como antes. Un hombre de treinta años informó que no le gustaba que lo llamaran “hombre”.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Su cabeza decía:  “No, mi padre es un hombre, no yo.” No le gustaba notar algunas canas. Muchos jóvenes admiten resistencia a “madurar” y asumir algún grado de responsabilidad por este mundo complejo, de rápido movimiento.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Las opciones parecen  infinitas, y la posibilidad de marcar una diferencia positiva parece muy débil. A los cuarenta, la gente se da cuenta de que la mitad de su vida ya pasó.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Tal vez hagan un balance y se pregunten: “¿Qué asignaturas pendientes quiero emprender mientras todavía tengo energía en la mente y en el cuerpo? ¿Qué sueños quiero tirar por la borda?”',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Después de los cincuenta, muchos informan que se miran en el espejo y se sorprenden al ver a su padre o hasta su abuelo que les devuelve la mirada. ¿Cómo me volví tan viejo? Están atónitos de bajar la vista y verse arrugas en las manos.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              '¡Aparecieron mientras no estaban mirando!) O se sienten consternados cuando no pueden abrir un frasco que tiene la tapa atascada o ya están cansados horas antes de que llegue la noche.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Nos sentimos consternados cuando nuestra edad interna no coincide con nuestra edad corporal. Una persona especulaba que nuestra edad interna se queda fijada en la época en que fuimos más felices.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Un hombre dijo: “Creía que cuando uno envejecía, se volvía naturalmente más sabio, pero ahora creo que uno tiene que trabajar para eso.” ¿Cómo se hace?, le preguntaron. “Creo que hay que empezar realmente a prestar atención.”',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'La esencia de este ejercicio es tomar conciencia de la impermanencia. Todas las cosas están envejeciendo continuamente y viniéndose abajo. Tenemos que hacer cada vez más esfuerzo para mantenerlas.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Una persona que hizo este ejercicio dijo: “Traté de tomar conciencia de todas las cosas que están envejeciendo, este té, esta galleta, esta alfombra, pero a medida que se ampliaba mi conciencia,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'me empecé a asustar y mi mente se cerró”. Permaneciendo en este momento, no tenemos edad. "Disfrutemos el momento".',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.oldRepublic,
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
