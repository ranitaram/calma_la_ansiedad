import 'package:calmar_la_ansiedad/pages/descubrimientos/descubrimiento_42.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/custom_parrafo.dart';

import '../../widgets/interstitial_clase_admob.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Acuerdate42 extends StatefulWidget {
  @override
  State<Acuerdate42> createState() => _Acuerdate42State();
}

class _Acuerdate42State extends State<Acuerdate42> {
  late double _deviceHeight;
  late double _deviceWidth;

  AnunciosInterstitial _anunciosInterstitial = new AnunciosInterstitial();

  @override
  void initState() {
    MobileAds.instance.initialize();
    AnunciosInterstitial();
    _anunciosInterstitial.createInter();
    _anunciosInterstitial.showInter();

    super.initState();
  }

  @override
  void dispose() {
    _anunciosInterstitial.createInter();
    _anunciosInterstitial.showInter();
    super.dispose();
  }

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
              Color.fromARGB(255, 5, 106, 230),
              Color.fromARGB(255, 118, 175, 210),
            ])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Para que te acuerdes',
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
                'Coloca la palabra “Procrastinación” en lugares clave donde sepas que es probable que pospongas cosas, También pon notas en lugares o cosas a los que tiendes a recurrir para procrastinar. Puedes colocar'),
            Parrafo(
                'un cartel en el televisor, en los videojuegos, o incluso en la computadora.'),
            BotonGordo(
                icon: FontAwesomeIcons.gamepad,
                texto: 'Si terminaste el desafío sigue adelante',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  _anunciosInterstitial.createInter();
                  _anunciosInterstitial.showInter();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Descubrimiento42()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.arrowLeftLong,
                texto: 'Regresa si aún no has terminado el desafío',
                color1: const Color.fromARGB(255, 4, 51, 43),
                color2: const Color.fromARGB(255, 15, 136, 81),
                onpress: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
