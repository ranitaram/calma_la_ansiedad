import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento30 extends StatefulWidget {
  @override
  State<Descubrimiento30> createState() => _Descubrimiento30State();
}

class _Descubrimiento30State extends State<Descubrimiento30> {
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
              Color.fromARGB(255, 237, 28, 5),
              Color.fromARGB(255, 96, 157, 241),
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
              'Podemos ver este proceso claramente cuando definimos un espacio físico particular como perteneciente a nosotros, una silla o un escritorio en un aula, una mesa en un rincón en nuestro restaurante favorito,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Este proceso comienza temprano en la vida. Es un proceso natural en el desarrollo humano, pero para que nosotros estemos verdaderamente felices, se tiene que modificar en la vida adulta.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'La codicia surge cuando pensamos que necesitamos algo para completarnos y ser felices. Podría ser un auto, una casa, comida, un título académico, la aclamación del público. Podría ser otra persona.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Si no podemos tener aquello en lo que hemos puesto el corazón, nos sentimos infelices. Esto es, definirnos por las posesiones materiales que podemos conseguir y a las que podemos aferrarnos.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'También nos definimos por nuestras posesiones mentales, haciendo alarde de nuestro conocimiento y defendiendo vigorosamente nuestros puntos de vista. Pensamos: “¡Mis opiniones sobre este tema son las correctas y',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'discutiré hasta que te convenza!” Esto es increíble y gracioso, sí consideras que en un grupo de veinticuatro personas hay veintitrés opiniones diferentes junto a la nuestra. ¿Por qué creeríamos',
              color: Colors.white,
            ),
            ParrafoGrande(
              'que la nuestra es la única correcta? El enojo o la irritación es una clave de que estamos defendiendo el yo. El enojo surge cuando pensamos que tenemos que deshacernos de algo o de alguien para ser felices.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Podría ser de un dolor o una enfermedad, de un jefe o un compañero de trabajo desagradable, de un vecino molesto o su perro que ladra. Si no podemos liberarnos de ellos, nos sentimos desdichados. ¿Por qué el mundo no',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'cooperará con lo que quiero que suceda? Una vez más, esto es increíble y gracioso. ¿Por qué las cosas saldrán como yo quiero y no como desean los otros siete mil millones de personas en el planeta? También somos ignorantes respecto de qué',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'es nuestro yo. No es una cosa constante, estable. Siempre está fluyendo. Todo lo que llamamos “yo” es un proceso siempre cambiante que afecta lo que nos gusta y lo que nos disgusta, No hay algo llamado “yo” que defender,',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'porque en realidad el yo es un proceso de sensaciones siempre cambiantes, incluidas las sensaciones que llamamos pensamientos.',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.dragon,
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
