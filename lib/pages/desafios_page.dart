import 'package:calmar_la_ansiedad/pages/desafios/desafio_1.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_10.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_11.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_12.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_13.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_15.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_16.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_17.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_18.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_19.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_2.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_20.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_21.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_22.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_23.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_24.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_25.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_26.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_27.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_28.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_29.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_3.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_30.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_31.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_32.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_33.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_34.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_35.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_36.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_37.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_38.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_39.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_4.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_40.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_41.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_42.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_43.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_44.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_45.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_46.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_47.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_48.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_49.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_5.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_50.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_51.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_52.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_53.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_6.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_7.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_8.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_9.dart';
import 'package:calmar_la_ansiedad/pages/desafios/desafio_14.dart';

import 'package:calmar_la_ansiedad/widgets/custom_parrafo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';

import '../providers/authentication_provider.dart';
import '../providers/chats_page_provider.dart';
import '../widgets/admon_ads.dart';
import '../widgets/boton_gordo.dart';
import '../widgets/top_bar.dart';

class DesafiosPage extends StatefulWidget {
  @override
  State<DesafiosPage> createState() => _DesafiosPageState();
}

class _DesafiosPageState extends State<DesafiosPage> {
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
          physics: const BouncingScrollPhysics(),
          children: [
            TopBar(
              'Desafíos',
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
                'Te recomendamos hacer un desafío por semana ó hasta que se convierta en un hábito,'),
            Parrafo(
                'una vez que forme parte de tu vida puedes hacer otro desafío. Es importante hacerlo en orden.'),
            BotonGordo(
              texto: 'Desafío 1: Usa tu mano menos capaz',
              onpress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Desafio1()));
              },
              color1: Colors.red,
              color2: Colors.blue,
              icon: FontAwesomeIcons.angellist,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.ghost,
                texto: 'Desafío 2: Cómo un fantasma',
                color1: Colors.green,
                color2: Colors.purple,
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Desafio2()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.headSideCoughSlash,
                texto: 'Desafío 3: Muletillas',
                color1: Colors.amber,
                color2: Colors.brown,
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Desafio3()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.handHoldingHeart,
                texto: 'Desafío 4: Ama tus manos',
                color1: const Color.fromARGB(255, 255, 7, 247),
                color2: const Color.fromARGB(255, 175, 230, 240),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio4()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.utensils,
                texto: 'Desafío 5: A comer',
                color1: const Color.fromARGB(255, 255, 143, 7),
                color2: const Color.fromARGB(255, 220, 237, 32),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio5()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.solidCommentDots,
                texto: 'Desafío 6: Cumplidos sinceros',
                color1: const Color.fromARGB(255, 225, 247, 79),
                color2: const Color.fromARGB(255, 237, 32, 70),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio6()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.jenkins,
                texto: 'Desafío 7: Postura correcta',
                color1: const Color.fromARGB(255, 59, 178, 242),
                color2: const Color.fromARGB(255, 32, 237, 80),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio7()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.rectangleList,
                texto: 'Desafío 8: Lista de agradecimientos',
                color1: const Color.fromARGB(255, 88, 103, 108),
                color2: const Color.fromARGB(255, 165, 22, 205),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio8()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.earlybirds,
                texto: 'Desafío 9: Pon atención a los sonidos',
                color1: const Color.fromARGB(255, 5, 76, 99),
                color2: const Color.fromARGB(255, 228, 57, 208),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio9()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.phone,
                texto: 'Desafío 10: Ringtone',
                color1: const Color.fromARGB(255, 155, 159, 160),
                color2: const Color.fromARGB(255, 46, 36, 228),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio10()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.handsPraying,
                texto: 'Desafío 11: Toca con cariño',
                color1: const Color.fromARGB(255, 74, 228, 74),
                color2: const Color.fromARGB(255, 244, 31, 16),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio11()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.stopwatch,
                texto: 'Desafío 12: Aguarda',
                color1: const Color.fromARGB(255, 228, 55, 228),
                color2: const Color.fromARGB(255, 244, 210, 16),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio12()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.newspaper,
                texto: 'Desafío 13: Evita los medios',
                color1: const Color.fromARGB(255, 55, 196, 228),
                color2: const Color.fromARGB(255, 114, 6, 6),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio13()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.eye,
                texto: 'Desafío 14: Mirada',
                color1: const Color.fromARGB(255, 123, 70, 227),
                color2: const Color.fromARGB(255, 91, 108, 7),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio14()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.question,
                texto: 'Desafío 15: Anónimo',
                color1: const Color.fromARGB(255, 4, 104, 162),
                color2: const Color.fromARGB(255, 158, 84, 123),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio15()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.lungs,
                texto: 'Desafío 16: Respira',
                color1: const Color.fromARGB(255, 126, 76, 31),
                color2: const Color.fromARGB(255, 12, 199, 187),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio16()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.doorOpen,
                texto: 'Desafío 17: Lugares',
                color1: const Color.fromARGB(255, 45, 237, 7),
                color2: const Color.fromARGB(255, 245, 102, 212),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio17()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.tree,
                texto: 'Desafío 18: Árboles',
                color1: const Color.fromARGB(255, 74, 77, 73),
                color2: const Color.fromARGB(255, 100, 74, 225),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio18()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.handSparkles,
                texto: 'Desafío 19: Reposa tus manos',
                color1: const Color.fromARGB(255, 161, 81, 236),
                color2: const Color.fromARGB(255, 204, 235, 5),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio19()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.stripeS,
                texto: 'Desafío 20: Sí',
                color1: const Color.fromARGB(255, 29, 162, 115),
                color2: const Color.fromARGB(255, 118, 56, 138),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio20()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.bold,
                texto: 'Desafío 21: Blue',
                color1: const Color.fromARGB(255, 74, 199, 237),
                color2: const Color.fromARGB(255, 8, 102, 216),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio21()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.shoePrints,
                texto: 'Desafío 22: Pies',
                color1: const Color.fromARGB(255, 237, 74, 231),
                color2: const Color.fromARGB(255, 222, 4, 4),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio22()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.creativeCommonsZero,
                texto: 'Desafío 23: Vacío',
                color1: const Color.fromARGB(255, 225, 159, 46),
                color2: const Color.fromARGB(255, 120, 108, 108),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio23()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.drumstickBite,
                texto: 'Desafío 24: Un Bocado',
                color1: const Color.fromARGB(255, 4, 109, 8),
                color2: const Color.fromARGB(255, 254, 133, 5),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio24()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.star,
                texto: 'Desafío 25: Deseos',
                color1: const Color.fromARGB(255, 1, 109, 148),
                color2: const Color.fromARGB(255, 142, 47, 201),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio25()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.clipboardList,
                texto: 'Desafío 26: Examina el dolor',
                color1: const Color.fromARGB(255, 208, 34, 22),
                color2: const Color.fromARGB(255, 92, 227, 107),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio26()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.personWalking,
                texto: 'Desafío 27: Zancada',
                color1: const Color.fromARGB(255, 50, 123, 91),
                color2: const Color.fromARGB(255, 92, 207, 227),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio27()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.water,
                texto: 'Desafío 28: Líquido',
                color1: const Color.fromARGB(255, 100, 108, 109),
                color2: const Color.fromARGB(255, 199, 107, 208),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio28()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.cloudMoon,
                texto: 'Desafío 29: Hacia arriba',
                color1: const Color.fromARGB(255, 84, 0, 101),
                color2: const Color.fromARGB(255, 27, 223, 220),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio29()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.dragon,
                texto: 'Desafío 30: Defínete',
                color1: const Color.fromARGB(255, 237, 28, 5),
                color2: Color.fromARGB(255, 96, 157, 241),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio30()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.java,
                texto: 'Desafío 31: Olores',
                color1: const Color.fromARGB(255, 237, 71, 5),
                color2: const Color.fromARGB(255, 235, 209, 10),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio31()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.masksTheater,
                texto: 'Desafío 32: Esa persona Podría morir',
                color1: Color.fromARGB(255, 29, 29, 29),
                color2: Color.fromARGB(255, 67, 67, 63),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio32()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.cloudSunRain,
                texto: 'Desafío 33: Temperatura',
                color1: const Color.fromARGB(255, 9, 197, 230),
                color2: const Color.fromARGB(255, 237, 85, 4),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio33()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.globe,
                texto: 'Desafío 34: Planeta',
                color1: const Color.fromARGB(255, 38, 199, 162),
                color2: const Color.fromARGB(255, 37, 87, 162),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio34()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.faceAngry,
                texto: 'Desafío 35: Lo qué no te gusta',
                color1: const Color.fromARGB(255, 255, 44, 7),
                color2: const Color.fromARGB(255, 225, 169, 203),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio35()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.question,
                texto: 'Desafío 36: ¿Ignoras algo?',
                color1: const Color.fromARGB(255, 255, 176, 7),
                color2: const Color.fromARGB(255, 189, 36, 2),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio36()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.wind,
                texto: 'Desafío 37: Viento',
                color1: const Color.fromARGB(255, 139, 148, 167),
                color2: const Color.fromARGB(255, 49, 60, 96),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio37()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.earListen,
                texto: 'Desafío 38: Escucha',
                color1: const Color.fromARGB(255, 139, 148, 167),
                color2: const Color.fromARGB(255, 247, 116, 195),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio38()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.userGroup,
                texto: 'Desafío 39: Gratitud',
                color1: const Color.fromARGB(255, 86, 142, 81),
                color2: const Color.fromARGB(255, 5, 232, 217),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio39()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.oldRepublic,
                texto: 'Desafío 40: Envejecimiento',
                color1: const Color.fromARGB(255, 137, 142, 136),
                color2: const Color.fromARGB(255, 20, 72, 68),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio40()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.userClock,
                texto: 'Desafío 41: Puntual',
                color1: const Color.fromARGB(255, 211, 47, 47),
                color2: const Color.fromARGB(255, 99, 74, 22),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio41()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.gamepad,
                texto: 'Desafío 42: Procrastinación',
                color1: const Color.fromARGB(255, 5, 106, 230),
                color2: const Color.fromARGB(255, 118, 175, 210),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio42()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.wineGlass,
                texto: 'Desafío 43: Sentido del gusto',
                color1: const Color.fromARGB(255, 146, 230, 10),
                color2: const Color.fromARGB(255, 225, 166, 18),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio43()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.faceTired,
                texto: 'Desafío 44: Ávido',
                color1: const Color.fromARGB(255, 154, 162, 167),
                color2: const Color.fromARGB(255, 225, 18, 149),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio44()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.faceSadCry,
                texto: 'Desafío 45: Ansiedad',
                color1: const Color.fromARGB(255, 147, 57, 57),
                color2: const Color.fromARGB(255, 14, 152, 92),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio45()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.carSide,
                texto: 'Desafío 46: Conduce en el presente',
                color1: const Color.fromARGB(255, 75, 73, 73),
                color2: const Color.fromARGB(255, 185, 211, 211),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio46()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.pizzaSlice,
                texto: 'Desafío 47: Observa la comida',
                color1: const Color.fromARGB(255, 242, 118, 41),
                color2: const Color.fromARGB(255, 167, 75, 232),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio47()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.sun,
                texto: 'Desafío 48: Luz',
                color1: const Color.fromARGB(255, 230, 14, 14),
                color2: const Color.fromARGB(255, 233, 207, 6),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio48()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.microscope,
                texto: 'Desafío 49: Checa tu estómago',
                color1: const Color.fromARGB(255, 197, 27, 213),
                color2: const Color.fromARGB(255, 174, 172, 174),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio49()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.brain,
                texto: 'Desafío 50: Gravedad',
                color1: const Color.fromARGB(255, 164, 10, 120),
                color2: const Color.fromARGB(255, 6, 154, 6),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio50()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.userLarge,
                texto: 'Desafío 51: Cuerpo',
                color1: const Color.fromARGB(255, 1, 160, 158),
                color2: const Color.fromARGB(255, 101, 65, 3),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio51()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.faceSmile,
                texto: 'Desafío 52: Sonríe',
                color1: const Color.fromARGB(255, 225, 237, 4),
                color2: const Color.fromARGB(255, 189, 189, 188),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio52()));
                }),
            BotonGordo(
                icon: FontAwesomeIcons.userNinja,
                texto: 'Desafío 53: Mejora las cosas',
                color1: const Color.fromARGB(255, 237, 47, 4),
                color2: const Color.fromARGB(255, 204, 193, 193),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => Desafio53()));
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
          'Desafíos Mindfulnnes',
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
