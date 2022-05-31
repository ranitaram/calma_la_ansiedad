import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento39 extends StatefulWidget {
  @override
  State<Descubrimiento39> createState() => _Descubrimiento39State();
}

class _Descubrimiento39State extends State<Descubrimiento39> {
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
              Color.fromARGB(255, 86, 142, 81),
              Color.fromARGB(255, 5, 232, 217),
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
              'Muchas personas han tratado de usar afirmaciones para volverse más felices o más positivas en sus puntos de vista, repitiéndose frases como: “Soy digno de amor” u “Hoy será un buen día y me traerá lo que quiero”.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Las afirmaciones pueden ser valiosas en algunos momentos, pero también pueden ocultar un estado mental perturbado. Este ejercicio es diferente. La práctica del agradecimiento es una investigación.',
              color: Colors.black,
            ),
            ParrafoGrande(
              '¿Podemos encontrar cualquier cosa, en cualquier lugar, en este momento, que cause nuestro agradecimiento? Observamos, escuchamos, sentimos. ¿Algo? Cuando nos tomamos un poco de tiempo,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'podemos descubrir que hay muchas cosas que agradecer, desde estar secos, vestidos y bien alimentados, a encontrar un empleado de tienda amable o el calor de una taza de té o café en la mano.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Una categoría de cosas para agradecer es lo que experimentamos como positivo, por ejemplo, tener comida en el estómago. Otra categoría de cosas para agradecer es que aquello que está ausente, por ejemplo, una enfermedad o una guerra.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'No agradecemos su ausencia hasta que hemos sufrido su presencia. Cuando nos recuperamos de una gripe fuerte, por un breve tiempo estamos contentos de estar sanos de nuevo, agradecidos de no estar vomitando o tosiendo;',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Felices, solo de poder comer y caminar. No apreciamos la salud hasta que hemos estado enfermos, el agua hasta que tenemos sed, o la electricidad hasta que se corta.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Este tarea nos ayuda a detenernos, abrir los sentidos y volvernos receptivos a lo que está disponible en nuestra vista en este momento. Esta práctica nos ayuda a cultivar la alegría.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'El término budista para alegría es mudita. Significa más que solo apreciar lo que nos hace sentir bien. Incluye la felicidad que sentimos en conexión con la alegría y la buena suerte de los otros.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Esta cualidad de la alegría no es difícil de sentir cuando los otros son las personas que amamos. Por ejemplo, podemos compartir fácilmente la felicidad de nuestro hijo con un nuevo juguete.',
              color: Colors.black,
            ),
            ParrafoGrande(
              '¿Qué sucede; sin embargo, cuando alguien que no nos gusta o del que estamos celosos, obtiene algo que queremos para nosotros como el aplauso público o un premio? ¿Podemos sentir alegría en su alegría? Esto no es tan fácil.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'La mente es atraída magnéticamente a lo negativo. Solo mira las noticias. Lo que retiene la atención de los lectores o los televidentes son los desastres naturales o creados por el hombre, las guerras, los incendios,',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'los tiroteos, los bombardeos, el retiro del mercado de juguetes o autos potencialmente peligrosos, las epidemias y los escándalos. ¿Por qué la mente se siente atraída a lo negativo?',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Porque la mente no tiene que preocuparse por las cosas positivas que podrían suceder. Para contrarrestar esta tendencia, alejarnos del hábito mental de la negatividad sutil y conformarnos más con la vida que estamos viviendo,',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            Parrafo(
              'necesitamos más que solo apreciar lo que nos hace sentir bien.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.userGroup,
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
