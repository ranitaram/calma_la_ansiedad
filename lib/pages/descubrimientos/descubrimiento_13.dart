import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento13 extends StatefulWidget {
  @override
  State<Descubrimiento13> createState() => _Descubrimiento13State();
}

class _Descubrimiento13State extends State<Descubrimiento13> {
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
              Color.fromARGB(255, 55, 196, 228),
              Color.fromARGB(255, 114, 6, 6),
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
              'Una dificultad durante la “abstinencia” es encontrar una actividad de reemplazo en el momento que habitualmente pasamos con los medios. Se puede meditar, salir a caminar, jugar a algo con la familia,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'cocinar, quitar las malezas en el jardín, sacar fotos, hacer algún trabajo artístico, aprender una nueva lengua o cómo tocar un instrumento musical, o simplemente sentarse en el porche y relajarse.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Tal vez descubras que no conocer las últimas noticias te hace sentir impotente, perezoso. ¿Y si pasa algo importante como el comienzo de una guerra mundial o ataques terroristas? Pues no te tienes que preocupar porque si es tan relevante,',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'alguien te avisara. En los últimos 20 años  los medios han volcado el sufrimiento de todo el mundo —guerras, desastres naturales, torturas, hambrunas— en nuestros ojos y oídos, todos los días, día tras día.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Este sufrimiento que no podemos arreglar se acumula en nuestra mente y nuestro corazón y nos hace sufrir. Cuando la mente y el corazón se llenan demasiado de imágenes de violencia, destrucción y dolor,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'tenemos que tomarnos el tiempo para vaciarlos. Desde la invención de la TV y de los noticieros, todos sufrimos hasta cierto punto de una victimización secundaria causada por el flujo incesante de imágenes vívidas que',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'salen de la pantalla y entran en nuestra mente: imágenes de asesinatos, genocidios, terremotos y epidemias mortales. Este bombardeo constante crea ansiedad crónica y nos abate. El mundo es imperfecto, ',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'millones de personas inocentes sufren y nosotros somos incapaces de hacer mucho para cambiar esto Una dieta constante de noticias negativas enferma la mente. Dale a tu mente el buen remedio del silencio.',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.newspaper,
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
