import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento49 extends StatefulWidget {
  @override
  State<Descubrimiento49> createState() => _Descubrimiento49State();
}

class _Descubrimiento49State extends State<Descubrimiento49> {
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
              Color.fromARGB(255, 197, 27, 213),
              Color.fromARGB(255, 174, 172, 174),
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
              'Muchas personas se sorprenden al darse cuenta de que han perdido el contacto con su estómago. Son conscientes de las sensaciones en el abdomen solo cuando son extremas,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'cuando el estómago les hace ruido y se queja porque está vacío, o cuando está “repleto” y se queja por haber sido incómodamente estirado.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Cuando la gente está presente en su estómago y lo checa antes de las comidas, a menudo descubre que se sientan a comer una comida completa, aun cuando las señales del estómago dicen que ya está lleno.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Comen solamente porque el reloj dice que es mediodía o la hora de cenar. Los habitantes de Okinawa están entre los más longevos del mundo. Tienen un dicho: hara no hachi bu, que significa “come hasta que estés cuatro quintos lleno”',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              '(literalmente ocho partes de diez). Las primeras cuatro partes favorecen la buena salud, pero si comes la quinta, favorecerás a tu médico.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Las personas que aprenden a estar conscientes de su estómago varias veces durante una comida casi siempre descubren que se sienten bastante satisfechas con menos comida que lo que están acostumbradas a comer normalmente.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'La alimentación consciente nos enseña a prestar atención a la sabiduría de nuestro cuerpo individual. Algunas personas descubren que su estómago está bastante relajado en la mañana temprano y que las señales de hambre no surgen',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'hasta las diez u once. Han estado desayunando a las siete durante décadas porque, de niños, les dijeron que no podía irles bien en la escuela si no comían un desayuno suculento.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Para su sorpresa, descubrieron que si posponen hacer la primera comida del día hasta que surgen las señales de hambre, su nivel de energía sigue siendo bueno y su mente está más clara.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'También pueden descubrir que el cuerpo les está pidiendo verduras o sopa para este “desayuno” tardío, no el habitual cereal endulzado o los panqueques con jarabe. Otras personas descubren que son como colibríes.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Necesitan un desayuno temprano y se sienten mejor si comen pequeñas cantidades con mucha frecuencia. Cada uno de nosotros es único. La alimentación consciente abre nuestra conciencia a la experiencia total,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'a la satisfacción total de comer. El estar presente aplicado a todas nuestras actividades abre nuestra conciencia a la satisfacción plena de vivir una vida humana.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Algunos confunden ansiedad con hambre, porque muchas de las sensaciones de esas dos experiencias son las mismas: una sensación persistente en el vientre, dificultad para pensar, sensación de flojedad o mareo.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Si comen cuando están ansiosos, su incomodidad puede aumentar, porque están comiendo contra el cuerpo y contra lo que saben que es sano. Solo cuando sabemos qué parte de nosotros tiene hambre podemos alimentarnos de un modo sano.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'La comida que necesitamos puede ser un sándwich, pero también podría ser a menudo una llamada a alguien que amamos. Escucha a la sabiduría de tu estómago. Puede conducirte a una salud mejor y a una mayor satisfacción.',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.microscope,
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
