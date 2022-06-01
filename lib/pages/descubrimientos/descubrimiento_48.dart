import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento48 extends StatefulWidget {
  @override
  State<Descubrimiento48> createState() => _Descubrimiento48State();
}

class _Descubrimiento48State extends State<Descubrimiento48> {
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
              Color.fromARGB(255, 230, 14, 14),
              Color.fromARGB(255, 233, 207, 6),
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
              'La luz permite a la gente usar las horas de la noche para mejora personal, entretenimiento, lectura, estudio y para crear cosas como música y arte. La luz tiene un efecto en nuestras emociones:',
              color: Colors.white,
            ),
            ParrafoGrande(
              'los brillantes tubos fluores centes y la tenue luz de una vela evocan cada uno un estado de ánimo diferente. Algunas personas se deprimen cuando las horas de luz de día se acortan en el invierno.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'La luz parece encender la energía y la creatividad en los humanos. Cuando las horas de luz solar son pocas en los inviernos de Alaska, la gente hiberna.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'En verano, cuando el sol no se pone nunca, la gente se llena de vida, hasta se vuelve un poco maníaca, y necesita pocas horas de sueño. La luz es terapéutica.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Ha demostrado ser tan eficaz como la medicación para el tratamiento de la depresión estacional leve. Algunas personas afirman que aman absorber los rayos de sol y toman conciencia,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'cuando hacen eso, de que toda vida depende de la energía de la luz que fluye desde el sol. En los últimos tiempos, sin embargo, algunas personas sienten aversión a la luz solar',
              color: Colors.white,
            ),
            ParrafoGrande(
              'debido a todas las advertencias respecto a que las camas solares y la luz solar causan cáncer. El miedo resultante ha provocado el resurgimiento de un antiguo problema médico:',
              color: Colors.white,
            ),
            ParrafoGrande(
              'la deficiencia de vitamina D. Hace poco, los médicos han tenido que aconsejar a la gente que tome al menos quince minutos de sol directo por día, pues la luz solar nos ayuda a producir vitamina D.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Al tomar conciencia de la luz, la gente también se vuelve más consciente de las sombras y la oscuridad. La luz es tan poco costosa y está tan disponible universalmente que rara vez exploramos la oscuridad. Hay luz en la oscuridad,',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'a menudo en lugares inesperados. Si entras en un bosque de noche sin una linterna, puedes ver muchos tipos de luz sutil. Esto abre los otros sentidos también: el oído, el tacto y el olfato.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Descubres que puedes seguir un sendero “viéndolo” con los pies. Trata de tomar conciencia de la “oscuridad” detrás de tus párpados. Descubrirás que allí no hay pura oscuridad, sino que está lleno de patrones dinámicos de luz y color.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Es un corolario muy interesante de esta práctica dejar de lado el conocimiento científico acerca de la luz y considerarla como si irradiara de los objetos. Hay un dicho zen para contemplar: ',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              '“Todo tiene su propia luz.” Esta contemplación puede incluir buscar la luz física que cada persona u objeto emite o notar la luz particular que cada persona trae al mundo. La luz parece dar esperanza.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Jesús dijo: “Soy la Luz del mundo. El que me siga no caminará en la oscuridad, sino que tendrá la Luz que es vida.” Se dice que la enseñanza del Buda “ha traído luz a la oscuridad” para que la gente pueda ver la verdad por sí misma.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'El Buda también instruyó a sus seguidores que fueran “una lámpara para ellos mismos”, lo que significaba que debían usar la luz de la mente para descubrir la verdad.',
              color: Colors.white,
            ),
            Parrafo(
                'Todos tienen su propia luz. ¿Cuál es la tuya? ¿Puedes hacerla brillar y ayudar a dar vida al mundo?'),
            // ParrafoGrande(
            //   '',
            //   color: Colors.white,
            // ),
            BotonGordo(
                icon: FontAwesomeIcons.sun,
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
