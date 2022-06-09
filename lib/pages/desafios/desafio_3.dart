import 'package:calmar_la_ansiedad/pages/acuerdate/acuerdate_3.dart';

import 'package:calmar_la_ansiedad/widgets/parrafo_grande.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/boton_gordo.dart';
import '../../widgets/top_bar.dart';

class Desafio3 extends StatefulWidget {
  @override
  State<Desafio3> createState() => _Desafio3State();
}

class _Desafio3State extends State<Desafio3> {
  late double _deviceHeight;
  late double _deviceWidth;

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
                colors: [Colors.amber, Colors.brown])),
        child: ListView(
          // controller: PageController(viewportFraction: 0.8),
          // scrollDirection: Axis.vertical,
          children: [
            TopBar(
              'Desafío: 3',
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
              'Reflexiona del uso de palabras y frases “de relleno” y trata de excluirlas de tus diálogos. Las muletillas son palabras que no agregan nada a lo que estás diciendo, como “ajá”, “así”, “pues”, “como”, “sabes”, “tipo”.',
              color: Colors.black,
            ),
            const SizedBox(height: 20),
            ParrafoGrande(
              'Muletillas adicionales, las adiciones recientes incluyen palabras como “obvio” y “claro”, entre otras. Además de eliminar las muletillas, ve si puedes notar por qué tiendes a usarlas, en qué situaciones y con qué propósito.',
              color: Colors.black,
            ),
            BotonGordo(
                icon: FontAwesomeIcons.headSideCoughSlash,
                texto: 'Siguiente',
                color1: const Color.fromARGB(255, 34, 210, 183),
                color2: const Color.fromARGB(255, 12, 85, 52),
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Acuerdate3()));
                }),
          ],
        ),
      ),
    );
  }
}
