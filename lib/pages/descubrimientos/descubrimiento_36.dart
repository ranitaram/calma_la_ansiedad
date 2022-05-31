import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento36 extends StatefulWidget {
  @override
  State<Descubrimiento36> createState() => _Descubrimiento36State();
}

class _Descubrimiento36State extends State<Descubrimiento36> {
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
              Color.fromARGB(255, 255, 176, 7),
              Color.fromARGB(255, 189, 36, 2),
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
              'Vivimos nuestros días con un foco estrecho. Prestamos atención al sonido del despertador, a lo que nuestra mente dice que está en nuestra lista de cosas para hacer durante el día, a lo que está en la TV o en la pantalla de la computadora,',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'a la voz en el teléfono celular. Nuestra atención se ensancha solo cuando ocurre algo inusual. ¡Un fuerte ruido! Los oídos se ponen en alerta. ¿Es un escape de auto o un disparo? O el clima cambia de golpe y',
              color: Colors.white,
            ),
            ParrafoGrande(
              'miramos el cielo por primera vez en semanas, quizás meses. Presta plena atención a la planta de los pies, percibiendo cada sensación de calidez, cosquilleo, presión. Nota dónde son más fuertes las sensaciones y',
              color: Colors.white,
            ),
            ParrafoGrande(
              'dónde podrían estar ausentes. Ahora trata de mantener esa conciencia mientras en silencio cuentas hacia atrás desde 100 de siete en siete. Puedes sentir que la mente trata de retener dos cosas al mismo tiempo,',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'yendo y viniendo entre los pies y la matemática mental. Si la mente no está hecha para prestar atención completa a dos cosas al mismo tiempo, entonces, siempre estamos ignorando muchas cosas.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Por ejemplo, la mayor parte del tiempo ignoramos la respiración y dejamos que nuestro cuerpo respire solo. Cuando la gente comienza a practicar estar presente en la respiración y lleva la atención de la mente al simple acto de respirar,',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'puede tener dificultad para descubrir cómo es una respiración “normal”. ¿Qué duración o profundidad debe tener? ¿Debe moverse solo el pecho o también el vientre? Tienen que aprender a no interferir con la respiración o forzarla,',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'permitir que la mente sea testigo de la respiración como sí estuvieran viéndose respirar de noche mientras duermen profundamente. Cuando concentramos nuestra atención en la respiración, no podemos atender a nuestra lista de cosas por las que',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'preocuparnos. Así es como la meditación a través de la respiración puede bajar la presión sanguínea y reducir el estrés. Los oftalmólogos nos dicen que, si estamos concentrados en un objeto cercano,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'como un libro o una pantalla de video por un período largo de tiempo, tenemos que refrescar los ojos (y proteger la vista) mirando a algo a lo lejos a intervalos regulares. El mismo consejo se aplica a la mente.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Tenemos que dejarla salir de la pequeña caja con regularidad, permitiendo que se expanda a lo largo y a lo ancho tanto como sea posible. La mayor parte de nuestra atención se dedica a buscar lo que nos da placer,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'evitar lo que es potencialmente peligroso o desagradable e ignorar todo lo demás. Buscaré a la muchacha hermosa, evitaré a ese vagabundo, e ignoraré a la persona que está delante de mí en la fila de la caja.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Cuando nos sentamos a meditar, soltamos los patrones de la mente de buscar o evitar. Reconocemos cuánto hemos estado ignorando durante nuestro día ajetreado.',
              color: Colors.white,
            ),
            Parrafo(
                'Deliberadamente, abrimos nuestra conciencia tanto como es posible.'),
            BotonGordo(
                icon: FontAwesomeIcons.question,
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
