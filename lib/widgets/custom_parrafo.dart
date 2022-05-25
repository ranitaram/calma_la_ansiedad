import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Parrafo extends StatelessWidget {
  String _parrafo;
  double? fontSize;
  Color? color;

  late double _deviceHeight;
  late double _deviceWidth;

  Parrafo(this._parrafo, {this.fontSize = 20, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Container(
        padding: const EdgeInsets.only(top: 3),
        height: _deviceHeight * 0.20,
        width: _deviceWidth * 0.03,
        child: Text(
          _parrafo,
          style: GoogleFonts.spaceMono(
              fontSize: fontSize, fontWeight: FontWeight.bold, color: color),
        ));
  }
}
