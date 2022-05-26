import 'package:calmar_la_ansiedad/pages/consejos_page.dart';
import 'package:calmar_la_ansiedad/pages/desafios_page.dart';
import 'package:calmar_la_ansiedad/widgets/boton_gordo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../providers/authentication_provider.dart';
import '../providers/chats_page_provider.dart';
import '../widgets/top_bar.dart';

class TranquilidadPage extends StatefulWidget {
  @override
  State<TranquilidadPage> createState() => _TranquilidadPageState();
}

class _TranquilidadPageState extends State<TranquilidadPage> {
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
      child: _builUI(),
    );
  }

  _builUI() {
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: _deviceWidth * 0.03,
          vertical: _deviceHeight * 0.02,
        ),
        height: _deviceHeight * 0.98,
        width: _deviceWidth * 0.97,
        child: ListView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: [
            TopBar(
              'Calma la ansiedad',
              fontSize: 28,
              primaryAction: IconButton(
                icon: const Icon(
                  Icons.logout,
                  color: Color.fromRGBO(0, 82, 218, 1.0),
                ),
                onPressed: () {
                  _auth.logout();
                },
              ),
            ),
            _botonConsejos(),
            _botonDesafios(),
            _imagenlottie(),
          ],
        ));
  }

  _botonConsejos() {
    return BotonGordo(
        icon: FontAwesomeIcons.personMilitaryPointing,
        texto: 'Consejos para detener un ataque de pánico',
        color1: const Color.fromRGBO(0, 136, 249, 1.0),
        color2: const Color.fromRGBO(0, 82, 218, 1.0),
        onpress: () {
          // Navigator.pushNamed(context, 'consejo');
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ConsejosPage()));
        });
  }

  _imagenlottie() {
    return Center(
      child: Lottie.asset('assets/images/inteligencia.json'),
    );
  }

  _botonDesafios() {
    return BotonGordo(
        icon: FontAwesomeIcons.userSecret,
        texto: 'Desafíos Mindfulnnes',
        color1: const Color.fromRGBO(0, 136, 249, 1.0),
        color2: const Color.fromRGBO(0, 82, 218, 1.0),
        onpress: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DesafiosPage()));
        });
  }
}
