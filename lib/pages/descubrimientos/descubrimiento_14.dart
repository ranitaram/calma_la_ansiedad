import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/custom_parrafo.dart';
import '../../widgets/top_bar.dart';

class Descubrimiento14 extends StatefulWidget {
  @override
  State<Descubrimiento14> createState() => _Descubrimiento14State();
}

class _Descubrimiento14State extends State<Descubrimiento14> {
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
              Color.fromARGB(255, 123, 70, 227),
              Color.fromARGB(255, 91, 108, 7),
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
              'Nosotros usamos los ojos amorosos cuando vemos a nuestros hijos, a la mascota que amamos, o a un bebé recién nacido, ¿Por qué no usamos ojos amorosos con más a menudo? Cuando entramos en un lugar,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'lo primero que vemos es lo que no nos gusta, como ese mueble desgastado, los muros sucios o mal pintados, el olor. Al despertar no saludamos a los integrantes de la familia, no hacemos una pausa para mirarlos con amor,',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Quizás nos amemos, pero olvidamos demostrarlo con los ojos. A menudo la gente se siente más cómoda, y curiosamente, más cercana, cuando se comunican de un modo indirecto, por teléfono. ',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Cuando las personas tratan de mirar el mundo con ojos amorosos, manifiestan un cambio en cómo ven los objetos y a las otras personas. Hay un rango de diferentes “ojos” que utilizamos, ',
              color: Colors.white,
            ),
            ParrafoGrande(
              'desde los ojos del enojo, los críticos, los impersonales, a los personales, los amables y los amorosos. Los ojos que elegimos usar colorean nuestra percepción del mundo,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Ver con ojos amorosos no es una experiencia en un solo sentido, ni es solamente una experiencia visual. Cuando tocamos a alguien con ojos amorosos, aportamos una cierta calidez de nuestra parte,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'pero también podemos sorprendernos de sentir una calidez que se irradia hacia nosotros. Empezamos a preguntarnos: ¿todo en el mundo está hecho de amor? Y ¿he estado bloqueando todo eso?',
              color: Colors.white,
            ),
            Parrafo(
              'Los ojos amorosos pueden crear un universo amoroso.',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.eye,
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
