import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento44 extends StatefulWidget {
  @override
  State<Descubrimiento44> createState() => _Descubrimiento44State();
}

class _Descubrimiento44State extends State<Descubrimiento44> {
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
              Color.fromARGB(255, 154, 162, 167),
              Color.fromARGB(255, 225, 18, 149),
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
              'La impaciencia es una experiencia común en nuestro mundo moderno. Nos impacientamos cuando el tráfico va lento o se detiene, cuando alguien llega tarde a una reunión, siempre que tenemos que esperar sin “hacer nada”.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Los signos corporales de la impaciencia son diferentes en cada individuo. Incluyen un ritmo cardíaco acelerado, tamborileo de dedos, movimiento continuo de las piernas, opresión en el pecho o el estómago, nerviosismo.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Los signos mentales de la impaciencia incluyen agitación, descuido, irritabilidad y algunos tipos de frases internas, a veces dichas en voz alta, como: “No puedo creer cuánto tarda esto”, “¿Cuál es la demora?”.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Puede ser interesante observar dónde y cuándo aprendiste a ser impaciente. ¿Tus padres no eran pacientes? ¿Aprendiste esto en la escuela porque el maestro no era interesante o porque los temas pasaban muy rápido o muy lentamente?',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'La gente que sufre de impaciencia a menudo tiene problemas para esperar que alguien termine de hablar, y lo interrumpe con una réplica prematura porque piensan que saben lo que esa persona terminará diciendo,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'pero no pueden soportar esperar a que lo diga. La impaciencia depende de que la mente se mueva hacia el futuro y trate de forzar al tiempo a moverse más rápido. La gente descubre que,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'cuando aprenden a reconocer las primeras señales de impaciencia y vuelven su conciencia a cualquier aspecto del momento presente —la respiración, el roce de la ropa en la piel,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'los sonidos de la habitación—, la impaciencia desaparece. La impaciencia es una de las formas más leves de la aversión. Cuando la mente grita impaciencia o el cuerpo la delata, puede ser útil preguntar a la mente:',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              '“Estamos apurados para terminar con esto, ¿para hacer qué?” Típicamente la mente dice: “Así podemos pasar a otra cosa que tenemos que hacer.” Luego repites la pregunta: “Así que queremos terminar con esto para pasar a otra cosa,',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              '¿para hacer qué?” Con cada respuesta, sigue preguntando: “¿Y luego qué?” Verás que la mente está apurada para llegar al final de esta hora, de este día, y por extensión lógica,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'el final de esta semana, el final de este año... y... ¿El final de la vida? Cuando nos apuramos, tenemos que recordar que, en última instancia, estamos corriendo hacia el final de la vida. ¿Es eso lo que realmente queremos?',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'También corremos para terminar con tareas que nos resultan aburridas o tediosas, como lavar los platos, así podemos pasar a las cosas que consideramos interesantes o relajantes, como comprar algo online o mirar un video.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Cuando aprendemos a estar presentes, momento a momento en todos los aspectos de la vida, las actividades que estamos apurados por terminar se vuelven interesantes.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Cuando la mente no está tirando de la correa para empujarnos al futuro, entonces, esas actividades también pueden ser relajantes. La impaciencia es una forma de enojo, y debajo del enojo/aversión siempre hay miedo.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Si puedes nombrar el miedo, comienzas a disolver el enojo. Pregunta: ¿Cuál es el miedo debajo de la impaciencia? Es miedo de no tener suficiente tiempo. Este es un miedo realista y no realista a la vez.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Es realista porque nunca sabemos cuándo terminará la vida, y hay muchas cosas que queremos hacer y experimentar antes de morir. Al mismo tiempo, el miedo de no tener suficiente tiempo no realista porque el tiempo es una creación de la mente.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Cuando podemos aquietar la mente, entrar en la conciencia pura y coincidir con el fluir de los acontecimientos, el tiempo desaparece. La tranquilidad de lo eterno se abre, y estamos en paz.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'La impaciencia nos roba la vida. Cuando surge la impaciencia, sumérgete en el momento presente, respirando, escuchando y percibiendo las sensaciones.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.faceTired,
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
