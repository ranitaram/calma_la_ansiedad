import 'package:calmar_la_ansiedad/widgets/Boton_ejercicio.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../widgets/admon_ads.dart';
import '../../widgets/boton_gordo.dart';

class ConsejoOjos extends StatefulWidget {
  @override
  State<ConsejoOjos> createState() => _ConsejoOjosState();
}

class _ConsejoOjosState extends State<ConsejoOjos> {
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
                icon: FontAwesomeIcons.eyeSlash,
                texto:
                    'Algunos ataques de pánico provienen de factores desencadenantes que te abruman. Si te encuentras en un entorno acelerado con muchos estímulos,',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.eyeSlash,
                texto:
                    'esto puede provocar que sufras uno. Para reducir los estímulos, cierra los ojos durante el ataque de pánico.',
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
                icon: FontAwesomeIcons.eyeSlash,
                texto:
                    'Esto puede bloquear cualquier estímulo adicional y hacer que sea más fácil concentrarte en tu respiración.',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.eyeSlash,
                texto:
                    'Ahora cierra los ojos, realiza las respiraciones profundas e intenta recordar un momento agradable que te haya causado mucha risa o alegrado el día.',
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
