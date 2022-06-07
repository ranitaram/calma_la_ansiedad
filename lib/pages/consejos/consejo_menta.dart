import 'package:calmar_la_ansiedad/widgets/Boton_ejercicio.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../widgets/admon_ads.dart';
import '../../widgets/boton_gordo.dart';

class ConsejoMenta extends StatefulWidget {
  @override
  State<ConsejoMenta> createState() => _ConsejoMentaState();
}

class _ConsejoMentaState extends State<ConsejoMenta> {
  late BannerAd _bannerAd;
  late double _deviceHeight;
  late double _deviceWidth;

  @override
  void initState() {
    MobileAds.instance.initialize();
    _loadBanner();
    super.initState();
  }

  @override
  void dispose() {
    _loadBanner();
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
        height: _deviceHeight * 0.98,
        width: _deviceWidth * 0.97,
        child: PageView(
          controller: PageController(viewportFraction: 0.6),
          scrollDirection: Axis.vertical,
          children: [
            BotonEjercicio(
                icon: FontAwesomeIcons.leaf,
                texto:
                    'Vaporub, Puede ayudar a que tu cuerpo se relaje. Si sabes que eres susceptible a sufrir ataques de pánico, ten a mano uno,',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.leaf,
                texto:
                    'existen varias presentaciones y puedes elegir uno de bolsillo, son fáciles de conseguir y no son caros.',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            Container(
              child: AdWidget(ad: _bannerAd),
              width: _bannerAd.size.width.toDouble(),
              height: _bannerAd.size.height.toDouble(),
            ),
            BotonEjercicio(
                icon: FontAwesomeIcons.leaf,
                texto:
                    'También puedes usar aceites esenciales de lavanda o menta, ponte un poco en las manos cuando sientas que se viene un ataque de pánico, Inhala el olor.',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.leaf,
                texto:
                    'Adicionalmente, puedes intentar tomar té de lavanda o manzanilla. Ambos son relajantes y calmantes.',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.leaf,
                texto:
                    'La lavanda no debe combinarse con benzodiacepinas. Esta combinación puede causar somnolencia intensa.',
                colorText: Colors.black,
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

  _loadBanner() {
    _bannerAd = BannerAd(
        size: AdSize.mediumRectangle,
        adUnitId: Anuncios.banner,
        listener: const BannerAdListener(),
        request: const AdRequest());

    _bannerAd.load();
  }
}
