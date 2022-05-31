import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento37 extends StatefulWidget {
  @override
  State<Descubrimiento37> createState() => _Descubrimiento37State();
}

class _Descubrimiento37State extends State<Descubrimiento37> {
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
              Color.fromARGB(255, 139, 148, 167),
              Color.fromARGB(255, 49, 60, 96),
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
              'El viento tiene muchas formas, desde los fuertes huracanes a las suaves respiraciones. Si llevamos este ejercicio a la mente y abrimos los sentidos varias veces por día durante una semana entera,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'comenzaremos a notar las maneras más sutiles en que se mueve el aire. La gente hace viento. Está el movimiento del aire en la respiración, cuando olfateas, cuando soplas sobre una bebida caliente, cuando suspiras.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Está la caricia en el cuerpo del aire en movimiento cuando caminas, incluso en ambientes cerrados. Está el aire que se mueve en muchos aparatos como las secadoras, los hornos de microondas y los refrigeradores.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Nuestro cuerpo es consciente del ambiente, aun cuando nosotros no lo seamos, porque hemos estado inconscientes o estamos durmiendo. Se mueve para protegernos elevando los folículos capilares para crear una capa aislante ',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'cerca de la piel, como una delgada chaqueta. Algunos viejos maestros señalan que esto es un ejemplo de nuestra inherente naturaleza de Buda, que nos cuida continuamente. A medida que nuestros sentidos se vuelven más refinados, descubrimos ',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'que, siempre que nos movemos, creamos un movimiento de aire. Hablar es un movimiento de aire. Cualquier sonido es un movimiento de aire. Un marino cuenta que el viento está siempre dando vueltas alrededor de toda la tierra.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Cuando él está en su barco, es sumamente consciente del viento y el clima que traerá porque no estar consciente de esto en medio del océano puede significar la muerte. En un viento huracanado, su barco tiene que mantenerse enfrentando directamente al',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'viento, o puede darse vuelta en un segundo. Aprender a navegar implica aprender a “leer” el viento notando los pequeños cambios en la superficie del agua o en la dirección de una bandera o el indicador',
              color: Colors.white,
            ),
            ParrafoGrande(
              '(un trozo de tela atado al barco). Si no hay banderas o indicadores visibles, el marino puede determinar la dirección del viento observando las aves de la costa como las gaviotas,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'que siempre se plantan enfrentando directamente el viento para que sus plumas no se alboroten. Este ejercicio nos invita a desarrollar este tipo de sensibilidad a los vientos cambiantes.',
              color: Colors.white,
            ),
            ParrafoGrande(
              '¿Cómo sabemos que existe el viento? Tómate un momento y reflexiona sobre esto. Hay cuatro formas en que experimentamos “viento”: sintiendo su roce, sintiendo un cambio en la temperatura,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'viéndolo mover otras cosas, y oyéndolo cuando se mueve a través de otras cosas. Lo que llamamos viento es esencialmente cambio, Hay una práctica sutil del estar presente que es tomar conciencia de la respiración en los orificios nasales.',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Pruébalo. Durante horas. No hay riesgo, excepto la posibilidad de volverte más consciente de los sutiles cambios que conforman el tejido de nuestra vida.',
              color: Colors.white,
            ),
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
