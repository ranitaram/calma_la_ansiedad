import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento22 extends StatefulWidget {
  @override
  State<Descubrimiento22> createState() => _Descubrimiento22State();
}

class _Descubrimiento22State extends State<Descubrimiento22> {
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
              Color.fromARGB(255, 237, 74, 231),
              Color.fromARGB(255, 222, 4, 4),
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
              'La gente notó que, por lo general, caminaba sin prestar mucha atención a los pies, a menos que le dolieran o se tropezaran. Si estaban atrapados en el pensamiento, llevar la conciencia de la cabeza a los pies tuvo',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'el efecto de asentar la mente. Esto ocurre probablemente porque las plantas de los pies es lo que más alejado está de la cabeza, el lugar donde a menudo nos parece que está ubicado nuestro “yo”.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Nos identificamos muy de cerca con nuestros pensamientos y damos a nuestra mente/cerebro un estatus exaltado. Muchos vemos inconscientemente al cuerpo cómo un mero sirviente del cerebro:',
              color: Colors.black,
            ),
            ParrafoGrande(
              'el cuerpo está equipado con pies para transportar a la mente que comanda, y con manos para obtener las cosas que la mente piensa que quiere. También hemos descubierto que, cuando somos conscientes de las plantas de los pies,',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'nuestro equilibrio mejora y tenemos pies más seguros. Cuando nos ponemos ansiosos, la mente se vuelve más activa y, como un hámster en una rueda de ejercicios, da vueltas alrededor, tratando de descubrir cómo escapar de ',
              color: Colors.black,
            ),
            ParrafoGrande(
              'la incomodidad mental o física. Al hacer esta tarea, la gente descubre qué, al llevar conciencia a todas las pequeñas sensaciones en las plantas de los pies, el flujo de las sensaciones físicas siempre cambiantes llena la mente por completo',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'y no hay espacio para reflexionar. Las personas se sienten con la cabeza más liviana, más ancladas, y es menos probable que los pensamientos y las emociones las sacudan. Bajar la conciencia a las plantas de los pies aclara',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'la mente y despeja las nubes de la ansiedad. A nuestra mente le gusta pensar. Cree que si no está pensando, está fracasando en su tarea de guiarnos y protegernos. Sin embargo, cuando la mente se vuelve hiperactiva,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'ocurre lo opuesto. Su guía se convierte en chillona, incluso cruel, y sus constantes advertencias nos llenan de ansiedad. ¿Cómo podemos poner a la mente pensante en su lugar y perspectiva correctos?',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Pasamos la mente de la función del pensamiento a la de la conciencia, comenzando con una plena conciencia del cuerpo. No es tan fácil mantener la mente quieta mientras caminamos. Cualquier movimiento del cuerpo parece producir',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'un movimiento de la mente. Podemos imponernos un desafío. ¿Puedo mantener mi mente quieta y focalizada en la planta del pie durante una o dos vueltas alrededor de la habitación? ¿O al caminar un sendero exterior?',
              color: Colors.black,
            ),
            ParrafoGrande(
              '¿O de aquí a la esquina? Llevar la conciencia a la planta del pie te conducirá a la estabilidad mental y la serenidad emocional, si lo practicas con diligencia.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.shoePrints,
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
