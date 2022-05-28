import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento25 extends StatefulWidget {
  @override
  State<Descubrimiento25> createState() => _Descubrimiento25State();
}

class _Descubrimiento25State extends State<Descubrimiento25> {
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
              Color.fromARGB(255, 1, 109, 148),
              Color.fromARGB(255, 142, 47, 201),
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
              'Un hombre, después de mantener la conciencia del deseo durante todo el día, descubrió que constantemente surgía el deseo, desde que se despertaba hasta el último momento consciente antes de quedarse dormido.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'Cuando suena el despertador, el deseo de dormir más. Camino a la cocina, el deseo de café. Por la noche, el deseo de acostarse en la cama. Y así sucesivamente. No hay nada que esté mal en el deseo.',
              color: Colors.white,
            ),
            ParrafoGrande(
              'El deseo nos mantiene vivos. Si no tuviéramos deseos de comer, beber o dormir, pronto moriríamos. No hay nada malo en desear comida cuando tienes hambre, y disfrutarla mientras comes. Sin embargo, sí nos aferramos a ese placer',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'después, y luego nos aferramos a la comida que nos produjo placer, comenzamos a andar por el camino del sufrimiento. Ese helado estaba tan delicioso, necesito otro tazón grande. Observar con qué frecuencia aparece el deseo durante',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'el día, hace que lo saquemos del terreno del inconsciente, desde donde nos puede dominar y dirigir nuestro comportamiento sin darnos cuenta. “Quiero/necesito/merezco un poco de he-lado” pronto se convierte en:',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              '“¿Cómo aumenté cinco kilos?” “Estoy solo y quiero/necesito/merezco alguien que me ame” pronto se convierte en “¿Cómo terminé en la cama con esta persona?” Cuando el deseo es llevado al terreno abierto de nuestra conciencia,',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'podemos verlo y decidir conscientemente si seguirlo sería algo saludable o no. Parte de la razón por la que el deseo es tan poderoso es que nos hace sentir vivos. Cuando nuestra mente se fija en algo que quiere,',
              color: Colors.white,
            ),
            ParrafoGrande(
              'somos como cazadores obsesionados con nuestra presa, alertas y con mucha energia. Si estamos pensando en comprar un auto, empezamos a ver autos por todas partes. Hablamos con amigos y vendedores de autos y leemos comparativas en',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'la red. Finalmente compramos uno. Estamos felices conduciéndolo por todas partes. Pero, ¿cuánto dura el placer? Unas semanas o meses a lo mucho. Luego se convierte simplemente en otro auto y empezamos la búsqueda de algo nuevo,',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'una nueva computadora, por ejemplo. El deseo en sí mismo puede ser placentero, y el deseo satisfecho puede ser decepcionante, y esta es una de las razones por las que la gente está siempre a la caza, sea de un auto nuevo, una nueva pareja o un',
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'nuevo sabor. Esta inquietud misma es la fuente de gran sufrimiento e insatisfacción. Cuando te sientas desdichado, descubre a qué te estás aferrando y suéltalo.',
              color: Colors.white,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.drumstickBite,
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
