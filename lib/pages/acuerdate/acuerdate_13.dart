import 'package:calmar_la_ansiedad/pages/descubrimientos/descubrimiento_13.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/custom_parrafo.dart';

import '../../widgets/interstitial_clase_admob.dart';
import '../../widgets/parrafo_grande.dart';
import '../../widgets/top_bar.dart';

class Acuerdate13 extends StatefulWidget {
  @override
  State<Acuerdate13> createState() => _Acuerdate13State();
}

class _Acuerdate13State extends State<Acuerdate13> {
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
              Color.fromARGB(255, 55, 196, 228),
              Color.fromARGB(255, 114, 6, 6),
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
              'Pega notas en la TV, en la radio, en tu computadora, que digan "Evita los medios", y cambia la contrase??a de bloqueo de tu tel??fono por la frase "Evita_los_medios". Y si puedes bloquear las notificaciones de apps de',
              color: Colors.white,
            ),
            Parrafo(
              'redes sociales, ser?? mucho mejor, hay que evitar toda distracci??n y tentaci??n.',
              color: Colors.white,
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            // Parrafo(
            //   'tel??fono para mirarlo y distraernos, o pegar esa peque??a ??en tu reloj si es que usas.',
            //   color: Colors.black,
            // ),
            BotonGordo(
                icon: FontAwesomeIcons.newspaper,
                texto: 'Si terminaste el desaf??o sigue adelante',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  _anunciosInterstitial.createInter();
                  _anunciosInterstitial.showInter();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Descubrimiento13()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.arrowLeftLong,
                texto: 'Regresa si a??n no has terminado el desaf??o',
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
