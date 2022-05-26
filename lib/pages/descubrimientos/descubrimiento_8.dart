import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/top_bar.dart';

class Descubrimiento8 extends StatefulWidget {
  @override
  State<Descubrimiento8> createState() => _Descubrimiento8State();
}

class _Descubrimiento8State extends State<Descubrimiento8> {
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
              Color.fromARGB(255, 88, 103, 108),
              Color.fromARGB(255, 165, 22, 205),
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
              'Para este desafío las personas suelen pensar que les costara mucho trabajo hacer la lista, por lo que está agradecido, pero se sorprenden al ver que una vez que empiezan, la lista frecuentemente se hace más larga.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Se ha comprobado que las personas que hacen con regularidad una lista, por lo que está agradecido día a día, muestran un aumento significativo en su nivel de felicidad y una disminución en la de depresión.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Hay que cultivar la mente dejando que las emociones y los pensamientos no saludables desaparezcan mientras se fortalecen los saludables; Puede parecer artificial al principio, pero cuando cultivamos deliberadamente la gratitud,',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'poco a poco nos convertimos en personas naturalmente agradecidas o de lo contrario si cultivamos estados mentales negativos, como la envidia o critica, estos se convertirán en lo que somos.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'La mente imagina cosas horribles que podrían ocurrir en el futuro; Nuestra mente parece estar atraída a los estados negativos, arrastra recuerdos difíciles una y otra vez,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'como si intentara cambiar el resultado, pero el pasado ya fue y no se puede cambiar el resultado, lo que podemos es cambiar nosotros mismos y solo lo podremos hacer estando conscientemente en el presente.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'La práctica de este reto es una forma muy poderosa para empezar a eliminar el estado mental negativo y de desastres y nos ayuda a sacar la luz los muchos sucesos positivos que pasaron en el día.',
              color: Colors.white,
            ),
            Parrafo(
              'La gente que practica la gratitud al final del día con regularidad, descubre que se vuelve capaz de ver el',
              color: Colors.white,
            ),
            Parrafo(
              'lado positivo de casi cualquier evento en su vida.',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.jenkins,
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
