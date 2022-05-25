import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BotonEjercicio extends StatelessWidget {
  final IconData icon;
  final String texto;
  final Color? colorText;
  final Color color1;
  final Color color2;
  final Function() onpress;

  BotonEjercicio(
      {required this.icon, //= FontAwesomeIcons.ambulance,
      required this.texto,
      required this.color1, // = Colors.white,
      required this.color2,
      this.colorText = Colors.white, // = Colors.blue,
      required this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onpress,
      child: Stack(
        children: [
          _BotonejericioBackground(icon, color1, color2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 600,
                width: 30,
              ),
              FaIcon(
                this.icon,
                color: Colors.white,
                size: 40,
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(texto,
                    style: GoogleFonts.spaceMono(fontSize: 18, color: colorText)
                    // const TextStyle(
                    //   color: Colors.black,
                    //   fontSize: 18,
                    // )
                    ),
              ),
              const FaIcon(
                FontAwesomeIcons.chevronRight,
                color: Colors.transparent,
              ),
              const SizedBox(
                width: 30,
              )
            ],
          )
        ],
      ),
    );
  }
}

class _BotonejericioBackground extends StatelessWidget {
  final IconData icon;
  final Color color1;
  final Color color2;

  const _BotonejericioBackground(this.icon, this.color1, this.color2);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Positioned(
                right: 40,
                top: 100,
                child: FaIcon(
                  icon,
                  size: 300,
                  color: Colors.white.withOpacity(0.1),
                ))
          ],
        ),
      ),
      width: double.infinity,
      height: 500,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.6),
                offset: Offset(4, 6),
                blurRadius: 10),
          ],
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(colors: [color1, color2])),
    );
  }
}
