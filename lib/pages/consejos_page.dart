import 'package:calmar_la_ansiedad/widgets/boton_gordo.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../providers/authentication_provider.dart';
import '../providers/chats_page_provider.dart';

class ConsejosPage extends StatefulWidget {
  @override
  State<ConsejosPage> createState() => _ConsejosPageState();
}

class _ConsejosPageState extends State<ConsejosPage> {
  late double _deviceHeight;
  late double _deviceWidth;

  late AuthenticationProvider _auth;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    _auth = Provider.of<AuthenticationProvider>(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ChatsPageProvider>(
          create: (_) => ChatsPageProvider(_auth),
        ),
      ],
      child: _buildUI(),
    );
  }

  _buildUI() {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: _deviceWidth * 0.03,
          vertical: _deviceHeight * 0.02,
        ),
        height: _deviceHeight * 0.98,
        width: _deviceWidth * 0.97,
        child: ListView(
          controller: PageController(viewportFraction: 0.8),
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: [
            TopBar(
              'Consejos',
              primaryAction: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Color.fromRGBO(0, 82, 218, 1.0),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            _titulo(),
            Parrafo(
                'Los ataques de pánico son oleadas repentinas e intensas de miedo, pánico o ansiedad. Son abrumadores y sus síntomas pueden ser tanto físicos como emocionales.'),
            BotonGordo(
                icon: FontAwesomeIcons.universalAccess,
                texto: 'Usa la respiración profunda 3 veces',
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            Parrafo(
                'Muchas personas con ataques de pánico pueden presentar dificultad para respirar, sudan profusamente, tiemblan y sienten el latido de su corazón.'),
            BotonGordo(
                icon: FontAwesomeIcons.brain,
                texto: 'Practica la conciencia plena Mindfulness',
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            Parrafo(
                'Algunas personas llegan a sentir dolor en el pecho y una sensación de desapego de la realidad o de sí mismas durante un ataque de pánico,'),
            Parrafo(
                'que les hace pensar que están teniendo un ataque al corazón. Otros han reportado sentirse como si estuvieran teniendo un accidente cerebrovascular.'),
            BotonGordo(
                icon: FontAwesomeIcons.eyeSlash,
                texto: 'Cierra los ojos',
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            Parrafo(
                'Una crisis de angustia o ataque de pánico consiste en la aparición repentina, habitualmente en menos de 10 minutos, de una sensación incontrolable de malestar'),
            const SizedBox(height: 15),
            Parrafo(
                'o terror, con frecuencia asociada a una idea de catástrofe inminente (sensación de muerte, de estar volviéndose loco o de estar perdiendo el control),'),
            const SizedBox(height: 15),
            BotonGordo(
                icon: FontAwesomeIcons.personRunning,
                texto: 'Haz ejercicios ligeros',
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            Parrafo(
                'Sus causas se desconocen aunque se ha demostrado un componente genético importante. Parece que está implicada una libración'),
            Parrafo(
                'exagerada de catecolaminas (sustancias que favorecen el nerviosismo, el temblor, la taquicardia y la agitación) ante determinados estímulos.'),
            BotonGordo(
                icon: FontAwesomeIcons.leaf,
                texto: 'Menta',
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            Parrafo(
                'Usted puede, reducir la cantidad de estrés, evitar que la situación empeore y ayudar a poner un poco de control en una situación confusa.'),
            BotonGordo(
                icon: FontAwesomeIcons.recycle,
                texto: 'Repite un mantra internamente',
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            Parrafo(
                'Cuando una persona está teniendo un ataque de pánico, es útil decirle cosas como las siguientes: "Puedes superarlo". "Estoy orgulloso de ti. Buen trabajo".'),
            const SizedBox(height: 15),
            Parrafo(
                '"Concéntrate en tu respiración. Mantente en el presente". "No es el lugar lo que te está causando las molestias; son tus pensamientos".'),
            BotonGordo(
                icon: FontAwesomeIcons.wandMagicSparkles,
                texto: 'Imagina tu lugar feliz',
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonGordo(
                icon: FontAwesomeIcons.arrowLeftLong,
                texto: 'Regresar',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }

  _titulo() {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(bottom: 15),
        child: Text(
          'Consejos para detener un ataque de pánico',
          textAlign: TextAlign.center,
          style: GoogleFonts.spaceMono(
              fontSize: 25, color: Colors.cyan, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
