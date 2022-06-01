import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento46 extends StatefulWidget {
  @override
  State<Descubrimiento46> createState() => _Descubrimiento46State();
}

class _Descubrimiento46State extends State<Descubrimiento46> {
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
              Color.fromARGB(255, 75, 73, 73),
              Color.fromARGB(255, 185, 211, 211),
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
              'Las personas descubren que este ejercicio abre la mente de principiante y ayuda a no manejar en piloto automático; mejora su intento de notar todos los movimientos sutiles que requiere conducir.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Podemos empezar este ejercicio, apenas entramos en el auto. Siente la presión del asiento en los muslos, los glúteos y la espalda. Siente los pies apoyados en el piso. Siente la presión de la llave de metal cuando arrancas.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Siente las vibraciones que te dicen que el auto está andando y no se ha detenido. Nota cómo las manos sujetan el volante. ¿Arriba, a los costados, en el borde inferior? ¿Una mano o las dos?',
              color: Colors.black,
            ),
            ParrafoGrande(
              '¿Qué emociones surgen mientras conduces? Por ejemplo, la gente suele informar que, cuando otro conductor le cruza el auto, experimenta estallidos de enojo que pueden destruir su serenidad mental.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Cuando practicamos la conducción consciente, notamos que cada persona tiene un estilo individual. Algunos manejan lenta y tímidamente, impacientando a sus pasajeros,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'mientras que otros aceleran en la luz amarilla y hacen que sus pasajeros se sientan mal en los giros abruptos. Algunos conductores miran el paisaje, comen y hacen llamadas telefónicas mientras manejan;',
              color: Colors.black,
            ),
            ParrafoGrande(
              'otros mantienen los ojos fijos en el camino, preparados para cualquier contingencia. Como la gente moderna pasa mucho tiempo en vehículos, este ejercicio ayuda a responder la pregunta:',
              color: Colors.black,
            ),
            ParrafoGrande(
              '“¿Cuándo puedo hallar tiempo para practicar el estar presente?” Estar presente en un vehículo puede brindarnos muchos minutos extra de práctica por día y ayudarnos a llegar a nuestro destino sintiéndonos refrescados.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Como todas las prácticas del estar presente, esta incluye el cuerpo, la mente y el corazón. La cuestión fundamental que subyace en todas estas tareas es: “¿Estás dispuesto a cambiar?”',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Conducir conscientemente implica estar dispuesto a cambiar nuestros hábitos de manejo. Normalmente, solo estamos dispuestos a cambiar cuando la vida no está funcionando para nosotros, Si quieres experimentar más paz y satisfacción,',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'debes examinar todos los aspectos de tu vida, tomar conciencia de los tipos de patrones de hábito que has acumulado en esas áreas, y estar dispuesto a descartar aquellos que no son útiles.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Mucha gente espera que un día llegue alguien o algo ocurra de repente, como un rayo, y eso transforme su vida por completo. Puedes perder toda la vida buscando que la felicidad llegue del exterior.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'La satisfacción de la calma es un derecho nato; es inherente a la persona. El estar presente nos da un vehículo que puede conducirnos directamente al lugar donde reside.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'La verdadera transformación es difícil. Comienza con pequeños cambios, cambios en cómo respiras, comes, caminas y conduces.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.carSide,
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
