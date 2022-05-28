import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';

import '../../widgets/top_bar.dart';

class Descubrimiento31 extends StatefulWidget {
  @override
  State<Descubrimiento31> createState() => _Descubrimiento31State();
}

class _Descubrimiento31State extends State<Descubrimiento31> {
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
              Color.fromARGB(255, 237, 71, 5),
              Color.fromARGB(255, 235, 209, 10),
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
              'Las células que responden a los olores en la parte posterior de la nariz están solo a dos sinapsis de distancia de los centros de procesamiento en el cerebro primitivo de las emociones y los recuerdos, por eso, los olores pueden evocar',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'poderosas respuestas condicionadas: deseo y aversión. Estas respuestas inconscientes pueden producirse aun cuando no seamos conscientes de detectar un olor. No apreciamos nuestro sentido del olfato hasta que lo',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'perdemos, por ejemplo, cuando tenemos un resfrío. La gente que pierde el sentido del olfato permanentemente puede deprimirse, porque también pierde el disfrute previo de la comida.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Muchos se vuelven ansiosos por no poder oler el humo de un incendio, por no poder detectar su propio olor corporal, o por comer comida en mal estado. Cuando práctica estar presente en el olfato,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'la gente descubre que hay muchos olores en su ambiente, algunos obvios (café, bollos de canela, gasolina, zorrillo)  y muchos otros que son más sutiles (el aire fresco cuando salimos al exterior,',
              color: Colors.black,
            ),
            ParrafoGrande(
              'el jabón o la crema de afeitar en la cara, las sábanas limpias). También descubren que el olor puede evocar emociones, deseo y aversió La investigación muestra que las mujeres tienen narices más sensibles que los hombres.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Las mujeres usan perfumes para atraer a los hombres, pero el esfuerzo probablemente es inútil. Las fragancias que los hombres eligen como favoritas son el olor al pan recién horneado, la vainilla y la carne en el asador.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Uno no es muy consciente del olor de su propio cuerpo. Otros pueden decirnos, para nuestra sorpresa, que tenemos que darnos una ducha o que tenemos un olor delicioso. Así como no somos conscientes del olor de nuestro cuerpo,',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'tampoco lo somos del “olor” de nuestra personalidad. ¿Cómo afecta eso a los demás? Gran parte de nuestra conducta está dirigida por el condicionamiento inconsciente.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'Conocemos a una persona que se parece, se viste, habla o incluso huele como alguien que nos lastimó en nuestra infancia, y sentimos una aversión instantánea, inexplicable hacia esta persona inocente.',
              color: Colors.black,
            ),
            ParrafoGrande(
              'No tiene nada que ver con ellos. Es sólo un fenómeno eléctrico, impresiones sensoriales que hacen que las neuronas se disparen y conecten con sitios en el cerebro donde se almacenan viejos recuerdos y emociones.',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'El olor puede tener un efecto poderoso en nuestro estado mental-emocional y en nuestra conducta. Los olores pueden activar recuerdos y viejas reacciones. Por ejemplo, el olor a cierta colonia para después de afeitar que',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'usaba tu padre podría hacerte sentir feliz y afectuoso o irritable y distante, según como se llevaran tu padre y tú. Los psicólogos a veces usan olores desagradables para desacondicionar impulsos o conductas destructivas,',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'El condicionamiento positivo al olor también puede ser útil. Una razón por la que se utiliza el incienso en los salones de meditación es que con el tiempo se forjó un fuerte vínculo entre su aroma y un estado mental silencioso y tranquilo',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'Cuando uno entra a una sala perfumada, la mente se asienta automáticamente. Los monjes se vuelven tan sensibles al olor en las largas horas de meditación que pueden decir cuándo termina el período de la meditación por el olor del',
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ParrafoGrande(
              'incienso. Cambia cuando la punta encendida alcanza el colchón de ceniza en el recipiente donde está ubicado. Podemos estar muy alertas a las fragancias cuando nuestra mente está quieta y el aporte de los otros sentidos es mínimo.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.java,
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
