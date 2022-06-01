import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento53 extends StatefulWidget {
  @override
  State<Descubrimiento53> createState() => _Descubrimiento53State();
}

class _Descubrimiento53State extends State<Descubrimiento53> {
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
              Color.fromARGB(255, 237, 47, 4),
              Color.fromARGB(255, 204, 193, 193),
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
              'Cuando la gente intenta por primera vez este ejercicio, puede sentirse confundida al ver cuánto puede hacerse. ¿Debo recoger toda la basura de la banqueta que está frente a mi apartamento?',
              color: Colors.black,
            ),
            ParrafoGrande(
              '¿Y qué pasa con la calle y el parque? ¿Dónde paro? Algunas personas se descarrilaron al contemplar las implicaciones filosóficas de esta tarea, y se preguntaron qué quería decir exactamente “mejor”,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'a la vista de siglos de intentos fallidos de mejorar el mundo, o debatieron si, cuando encontraban el plato sucio de otro en el fregadero, debían simplemente lavarlo o si eso no “facultaría” al otro a seguir siendo inconsciente y',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'desconsiderado. Pero si piensas qué eso haría feliz a otros, entonces, el resentimiento empezara a desaparecer, también es aliviador abandonar el juicio interno y solamente poner el cuerpo a dejar',
              color: Colors.black,
            ),
            ParrafoGrande(
              'mejor las cosas que como estaban. Hay infinitas formas en que podemos trabajar para mejorar el mundo. Aunque este ejercicio comienza con mejorar nuestro ambiente físico inmediato, tiene implicancias más amplias.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'La mayoría de nosotros no va a inventar algo que mejore la vida de millones. (Y, como todos sabemos ahora, esos inventos, desde los antibióticos, la democracia,hasta los zoológicos, siempre tiene un aspecto oscuro).',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Sin embargo, si cada persona trabajara con la meta de dejar su pequeña esfera de influencia mejor como resultado de su presencia, todo el mundo se beneficiaría tremendamente.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Muchas personas notaron que, cuando encontraron un lío que otro había hecho, sintieron resentimiento respecto de este ejercicio. Se dieron cuenta de que su primera tarea era dejar ir el resentimiento,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'y luego podían sumergirse en la tarea de limpiar,  libre del sufrimiento emocional extra. La mayoría de la gente tiene un deseo sincero de dejar el mundo mejor como resultado de su paso por él.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Usan productos de limpieza que no contaminan, llevan bolsas que se pueden volver a usar al supermercado y son conscientes de no desperdiciar recursos como la energía, el alimento o el agua.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Estas son prácticas ecológicas, formas de trabajar que hacen del mundo material un lugar más limpio, más sano para nosotros y para las generaciones futuras.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Las prácticas espirituales son maneras de trabajar con el corazón y la mente, para transformar estados mentales y emocionales difíciles como el enojo, la envidia y la codicia en estados beneficiosos como la',
              color: Colors.black,
            ),
            ParrafoGrande(
              'determinación, la alegría por la felicidad del otro y la generosidad. No es difícil dejar el mundo mejor cuando pasas por él. Solo practica la amabilidad.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.userNinja,
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
