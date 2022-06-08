import 'package:calmar_la_ansiedad/pages/descubrimientos/descubrimiento_1.dart';

import 'package:calmar_la_ansiedad/widgets/interstitial_clase_admob.dart';
import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/top_bar.dart';

class Acuerdate1 extends StatefulWidget {
  @override
  State<Acuerdate1> createState() => _Acuerdate1State();
}

class _Acuerdate1State extends State<Acuerdate1> {
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
                colors: [Colors.red, Colors.blue])),
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
              'Ponte una cinta adhesiva en la mano dominante y cuando la veas, cambia de mano, ó ponla en todos aquellos objetos que agarras con tu mano dominante, como el ratón de la computadora, tu cepillo de dientes, etc..',
              color: Colors.white,
            ),
            BotonGordo(
              icon: FontAwesomeIcons.angellist,
              texto: 'Si terminaste el desafío sigue adelante',
              color1: const Color.fromARGB(255, 34, 210, 183),
              color2: const Color.fromARGB(255, 12, 85, 52),
              onpress: () {
                _anunciosInterstitial.createInter();
                _anunciosInterstitial.showInter();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Descubrimiento1()));
              },
            ),
            BotonGordo(
                icon: FontAwesomeIcons.arrowLeftLong,
                texto: 'Regresa si aún no has terminado el desafío',
                color1: Color.fromARGB(255, 4, 51, 43),
                color2: Color.fromARGB(255, 15, 136, 81),
                onpress: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
