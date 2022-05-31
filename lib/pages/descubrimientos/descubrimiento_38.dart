import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento38 extends StatefulWidget {
  @override
  State<Descubrimiento38> createState() => _Descubrimiento38State();
}

class _Descubrimiento38State extends State<Descubrimiento38> {
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
              Color.fromARGB(255, 139, 148, 167),
              Color.fromARGB(255, 247, 116, 195),
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
              'Los músicos han sido entrenados para escuchar con atención absorbente los sonidos musicales, pero eso no significa que sean capaces de escuchar del mismo modo cuando una persona les está hablando.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Los buenos psicoterapeutas usan la escucha absorbente. Sintonizan con los cambios sutiles del tono o la calidad de voz que indica algo más profundo que las palabras, que incluso las contradice: un escollo,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'lágrimas o enojo ocultos que necesitan ser explorados. Los abogados están entrenados para hacer lo opuesto, en especial, si trabajan en la atmósfera conflictiva de un tribunal.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Escuchan buscando las fallas o las discrepancias en lo que alguien está diciendo, al mismo tiempo que están pensando una refutación. Esto puede funcionar en el tribunal, pero no es muy bueno en la casa, con el cónyuge o los hijos,',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'La gente también descubre cuántas veces, incluso en un solo minuto, “se van” mientras otro está hablando. Hay un giro en la mente hacia la lista de las compras o una cita futura, o un giro en los ojos para ver a alguien que pasa.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'La escucha absorbente no es fácil. Es una habilidad que necesita tiempo de aprendizaje. Para hacer una escucha absorbente, tenemos que aquietar el cuerpo y la mente. Esto es el estar presente en acción,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'manteniendo un centro de quietud interno en un mundo ruidoso que se mueve constantemente. Cuando escuches con cuidado, tomarás conciencia de tus pensamientos como fondo del sonido.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Como el ruido de un coche que pasa, reconoces tus pensamientos que pasan, pero no eres perturbado por ellos. La mayoría de las personas siente gratitud por ser tan bien recibido. Se sienten valorados.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Hay una lectura budista para invocar la compasión que subraya el papel de la escucha en el cuidado de los otros. “Practicaremos escuchar tan atentamente como seamos capaces para oír lo que el otro está diciendo... y también lo que',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'queda sin decir. Sabemos que escuchando profundamente ya aliviamos una gran cantidad de dolor y sufrimiento en el otro”. Algunas personas se siente incómodas al principio, como si fuera algo que está fuera de su experiencia de vida,',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'que alguien solamente escuche lo que están diciendo. Al principio sienten como si estuvieran siendo examinados, como un espécimen biológico. La escucha absorbente también puede darte ecuanimidad respecto de las difíciles ',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'voces que hay en tu mente. Cuando el Crítico Interno dice algo absurdo como: “Mírate las arrugas. ¡Las odio! ¡No deberías envejecer!”, puedes solo ser consciente de lo que dice sin creerle ni reaccionar.',
              color: Colors.black,
            ),
            Parrafo(
              'La escucha absorbente es en sí misma terapéutica y no se necesita el título de psicólogo para practicarla.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.earListen,
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
