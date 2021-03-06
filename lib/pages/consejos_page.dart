import 'package:calmar_la_ansiedad/pages/consejos/conejo_ojos.dart';
import 'package:calmar_la_ansiedad/pages/consejos/consejo_ejercicios.dart';
import 'package:calmar_la_ansiedad/pages/consejos/consejo_imagina.dart';
import 'package:calmar_la_ansiedad/pages/consejos/consejo_mantra.dart';
import 'package:calmar_la_ansiedad/pages/consejos/consejo_menta.dart';
import 'package:calmar_la_ansiedad/pages/consejos/consejo_mindfulnnes.dart';
import 'package:calmar_la_ansiedad/pages/consejos/consejo_respiracion.dart';
import 'package:calmar_la_ansiedad/widgets/boton_gordo.dart';
import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:calmar_la_ansiedad/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';

import '../providers/authentication_provider.dart';
import '../providers/chats_page_provider.dart';
import '../widgets/admon_ads.dart';

class ConsejosPage extends StatefulWidget {
  @override
  State<ConsejosPage> createState() => _ConsejosPageState();
}

class _ConsejosPageState extends State<ConsejosPage> {
  late BannerAd _bannerAd;
  late double _deviceHeight;
  late double _deviceWidth;

  late AuthenticationProvider _auth;

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
            Container(
              child: AdWidget(ad: _bannerAd),
              width: _bannerAd.size.width.toDouble(),
              height: _bannerAd.size.height.toDouble(),
            ),
            _titulo(),
            Parrafo(
                'Los ataques de p??nico son oleadas repentinas e intensas de miedo,'),
            Parrafo(
                'p??nico o ansiedad. Son abrumadores y sus s??ntomas pueden ser tanto f??sicos como emocionales.'),
            BotonGordo(
                icon: FontAwesomeIcons.universalAccess,
                texto: 'Usa la respiraci??n profunda 3 veces',
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ConsejoRespiracion()));
                }),
            Parrafo(
                'Muchas personas con ataques de p??nico pueden presentar dificultad para respirar,'),
            Parrafo(
                'sudan profusamente, tiemblan y sienten el latido de su coraz??n.'),
            BotonGordo(
                icon: FontAwesomeIcons.brain,
                texto: 'Practica la conciencia plena Mindfulness',
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ConsejoMindfulness()));
                }),
            Parrafo(
                'Algunas personas llegan a sentir dolor en el pecho y una sensaci??n de desapego de la realidad'),
            Parrafo('o de s?? mismas durante un ataque de p??nico,'),
            Parrafo(
                'que les hace pensar que est??n teniendo un ataque al coraz??n. Otros han reportado sentirse como'),
            Parrafo('si estuvieran teniendo un accidente cerebrovascular.'),
            BotonGordo(
                icon: FontAwesomeIcons.eyeSlash,
                texto: 'Cierra los ojos',
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ConsejoOjos()));
                }),
            Parrafo(
                'Una crisis de angustia o ataque de p??nico consiste en la aparici??n repentina,'),
            Parrafo(
                'habitualmente en menos de 10 minutos, de una sensaci??n incontrolable de malestar o terror,'),
            Parrafo(
                'con frecuencia asociada a una idea de cat??strofe inminente,'),
            Parrafo(
                '(sensaci??n de muerte, de estar volvi??ndose loco o de estar perdiendo el control)'),
            BotonGordo(
                icon: FontAwesomeIcons.personRunning,
                texto: 'Haz ejercicios ligeros',
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ConsejoEjercicios()));
                }),
            Parrafo(
                'Sus causas se desconocen aunque se ha demostrado un componente gen??tico importante.'),
            Parrafo(
                'Parece que est?? implicada una libraci??n exagerada de catecolaminas'),
            Parrafo(
                '(sustancias que favorecen el nerviosismo, el temblor, la taquicardia y la '),
            Parrafo(
                'agitaci??n) ante determinados est??mulos. Usted puede, reducir la cantidad de estr??s,'),
            BotonGordo(
                icon: FontAwesomeIcons.leaf,
                texto: 'Menta',
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ConsejoMenta()));
                }),
            Parrafo(
                'evitar que la situaci??n empeore y ayudar a poner un poco de control en una situaci??n confusa.'),
            BotonGordo(
                icon: FontAwesomeIcons.recycle,
                texto: 'Repite un mantra internamente',
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ConsejoMantra()));
                }),
            Parrafo(
                'Cuando una persona est?? teniendo un ataque de p??nico, es ??til decirle cosas como las siguientes:'),
            Parrafo(
                '"Puedes superarlo". "Estoy orgulloso de ti. Buen trabajo" "Dime qu?? necesitas ahora".'),
            const SizedBox(height: 15),
            Parrafo(
                '"Conc??ntrate en tu respiraci??n. Mantente en el presente". "No es el lugar lo que te est?? causando.'),
            Parrafo(
                'las molestias; son tus pensamientos" "Lo que sientes es atemorizante, pero no es peligroso".'),
            BotonGordo(
                icon: FontAwesomeIcons.wandMagicSparkles,
                texto: 'Imagina tu lugar feliz',
                color1: const Color.fromARGB(255, 55, 199, 228),
                color2: const Color.fromARGB(255, 136, 171, 155),
                onpress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ConsejoImagina()));
                }),
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
          'Consejos para detener un ataque de p??nico',
          textAlign: TextAlign.center,
          style: GoogleFonts.spaceMono(
              fontSize: 25, color: Colors.cyan, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  _loadBanner() {
    _bannerAd = BannerAd(
        size: AdSize.largeBanner,
        adUnitId: Anuncios.banner,
        listener: const BannerAdListener(),
        request: const AdRequest());

    _bannerAd.load();
  }
}
