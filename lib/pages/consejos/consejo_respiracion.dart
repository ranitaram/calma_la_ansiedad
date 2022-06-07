import 'package:calmar_la_ansiedad/widgets/Boton_ejercicio.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';

import '../../widgets/admon_ads.dart';
import '../../widgets/boton_gordo.dart';

class ConsejoRespiracion extends StatefulWidget {
  @override
  State<ConsejoRespiracion> createState() => _ConsejoRespiracionState();
}

class _ConsejoRespiracionState extends State<ConsejoRespiracion> {
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
            Center(child: Lottie.asset('assets/images/respira.json')),
            BotonEjercicio(
                icon: FontAwesomeIcons.universalAccess,
                texto:
                    'Si bien la hiperventilación es un síntoma de ataque de pánico que puede aumentar el miedo, respirar profundamente puede reducir los síntomas de pánico durante un ataque.',
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
                icon: FontAwesomeIcons.universalAccess,
                texto:
                    'Si puedes controlar tu respiración, es menos probable que te hiperventiles ya que esto puede empeorar otros síntomas, incluyendo el ataque de pánico.',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.universalAccess,
                texto:
                    'Concéntrate en inhalar y exhalar por la boca, sintiendo cómo el aire llena lentamente tu pecho y abdomen,',
                colorText: Colors.black,
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {}),
            BotonEjercicio(
                icon: FontAwesomeIcons.universalAccess,
                texto:
                    'y luego expúlsalo lentamente. Inhala contando hasta cuatro, mantén el aire por un segundo y luego exhala contando hasta cuatro.',
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
