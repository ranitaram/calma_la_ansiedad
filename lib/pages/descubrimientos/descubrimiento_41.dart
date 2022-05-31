import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento41 extends StatefulWidget {
  @override
  State<Descubrimiento41> createState() => _Descubrimiento41State();
}

class _Descubrimiento41State extends State<Descubrimiento41> {
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
              Color.fromARGB(255, 211, 47, 47),
              Color.fromARGB(255, 99, 74, 22),
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
              'Algunos tienen como hábito llegar temprano. Sienten que es cortés y parte de estar en armonía en un grupo. Pueden sentirse irritados con la gente que llega tarde. Otros admiten que habitualmente llegan tarde.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'No les gusta tener que esperar a que un evento comience: se aburren o resienten la pérdida de tiempo. Llegar temprano genera ansiedad en algunas personas. Se sienten incómodos cuando son los primeros en',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'llegar a una reunión o a una fiesta. Una persona superó esa ansiedad usando el tiempo extra para ayudar o relajarse y hablar informalmente con los anfitriones u otros que llegaron temprano.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Algunas personas adelantan el reloj deliberadamente, para engañar a la mente y así ser puntuales. Otros se imponen fechas de entrega falsas para generar suficiente ansiedad y terminar la tarea a tiempo.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'La gente descubrió que a menudo llegaba tarde cuando trataba de apretar muchas actividades en muy poco tiempo, por ejemplo, demasiados trámites o un correo electrónico de último momento antes de meterse en el auto.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Luego no podían encontrar las llaves, tenían que volver a entrar a la casa, una búsqueda frenética, el triunfo de encontrarlas, y el darse cuenta de que llegaban tarde una vez más.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Ser puntual puede significar cambiar no solo uno sino varios hábitos, por ejemplo, preparar la ropa o hacer el almuerzo la noche anterior. Algunas personas nunca llegan tarde, y podrían intentar un ejercicio diferente.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Podrían observar cómo la mente juzga a quienes llegan tarde. O podrían emprender la tarea de llegar tarde a propósito, ¡y ver qué les pasa en el cuerpo y en la mente!',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Este ejercicio no es en realidad sobre el tiempo. Es sobre los estados mentales y los patrones habituales. En otras palabras, es sobre la construcción del yo. Si tenemos una imagen bastante elevada de nosotros mismos,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'comenzamos a pensar que nuestro tiempo vale más que el de los otros. Preferimos ser los últimos en llegar porque tenemos tantas cosas importantes que hacer y no queremos “perder tiempo sentados charlando”. ',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Quizás nuestra identidad está ligada a ser muy productivo y no vemos que hablar con nuestros compañeros de trabajo sea algo valioso.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Algunas personas notan que su mente dice que nunca hay suficiente tiempo, lo que los pone ansiosos o hasta los enoja. “¡Si solo me dieran un poco más de tiempo!” Tenemos que preguntarle a nuestra mente:',
              color: Colors.white,
            ),
            ParrafoGrande(
              '¿cuánto tiempo sería suficiente? ¿Cuánto tiempo sería demasiado? En los largos retiros de meditación silenciosa, el tiempo se vuelve elástico. Una hora puede pasar volando cuando la mente está quieta y focalizada.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Unos pocos minutos pueden parecer una hora, especialmente cuando parte del cuerpo se está quejando. El momento presente es lo único que hay; el tiempo se vuelve irrelevante.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Cuando vivimos más en la conciencia que en el pensamiento, el tiempo parece adaptarse para que haya exactamente el tiempo suficiente para que cada cosa se logre plenamente, y luego desaparezca.',
              color: Colors.white,
            ),
            Parrafo('En el momento presente siempre hay mucho tiempo.'),
            BotonGordo(
                icon: FontAwesomeIcons.userClock,
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
