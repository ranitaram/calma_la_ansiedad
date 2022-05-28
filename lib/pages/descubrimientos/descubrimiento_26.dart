import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento26 extends StatefulWidget {
  @override
  State<Descubrimiento26> createState() => _Descubrimiento26State();
}

class _Descubrimiento26State extends State<Descubrimiento26> {
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
              Color.fromARGB(255, 208, 34, 22),
              Color.fromARGB(255, 92, 227, 107),
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
              'El sufrimiento está en todas partes. Lo vemos en la cara ansiosa de las personas, lo oímos en sus voces, lo vemos en las noticias. Cuando estudiamos el sufrimiento, podemos oírlo en nuestros pensamientos, sentirlo en nuestro cuerpo,',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'verlo en nuestra cara, en el espejo. A menudo la gente comienza este ejercicio pensando en el sufrimiento en sus formas extremas y obvias: la muerte de un ser querido o los niños que son víctimas de la guerra.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'A medida que esta tarea va aumentando la conciencia, la gente descubre que hay un espectro de sufrimiento, desde la leve irritación e impaciencia, a la furia o el dolor abrumador. Estamos expuestos al sufrimiento no solo de la gente,',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'sino también de los animales. Vemos el sufrimiento de aquellos que amamos y también el de los extraños de la calle. El sufrimiento inunda nuestro corazón y nuestra mente a través de la radio,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'la TV e Internet. El sufrimiento es la angustia mental y emocional que se agrega a estas sensaciones físicas Por ejemplo, cuando tenemos un dolor de cabeza, podemos pensar: Bien, tengo un malestar pasajero en esta área del cuerpo”',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Bien, tengo un malestar pasajero en esta área del cuerpo”. O podemos pensar: “Este es el segundo dolor de cabeza que he tenido esta semana.” (Arrastrar el pasado al presente). “Estoy seguro de que va a empeorar, como pasó antes.” ',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              '(Predecir y quizás crear hechos futuros). ¿Nuestra angustia mental nos ayuda a curar el dolor físico? No, solamente lo hace más fuerte y lo prolonga. Hemos tomado un simple malestar temporal y lo convertimos en un sufrimiento inmenso.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Hay algunos beneficios en el sufrimiento. Si nunca experimentamos el sufrimiento, iremos por la vida sin ningún motivo para el cambio. Lamentablemente, parece ser cierto que estamos más motivados para cambiar cuando',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'más infelices somos. Si podemos controlar la mente para que no se vuelva loca, especulando y distribuyendo desastres, buscando a alguien a quien culpar por nuestra miseria, entonces solo experimentaremos los aspectos físicos de lo que.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'llamamos “dolor” La resistencia mantiene el dolor. Cuando no le agregamos estrés mental y emocional al simple malestar físico, el dolor es libre para cambiar e incluso disolverse.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Cuando estamos doloridos o angustiados, es un momento perfecto para cambiar la dirección de nuestra conciencia de adentro hacia afuera, y para practicar la bondad amorosa con todos los que sufren, del mismo modo que estamos sufriendo ahora.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Por ejemplo, cuándo tenemos gripe, podemos decir: “Que todos los que están enfermos en cama hoy, entre ellos yo, tengamos paz. Que todos descansemos bien y nos recuperemos rápidamente.” Del mismo modo que estar enfermo nos ayuda a ',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'apreciar la buena salud, cuando tomamos conciencia de los muchos tipos de sufrimiento, también tomamos más conciencia de lo opuesto, El sufrimiento nos da la motivación para cambiar.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Que ese cambio sea positivo o negativo depende de nosotros. El sufrimiento también nos da el regalo de la empatía por todos los que sufren como nosotros.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.clipboardList,
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
