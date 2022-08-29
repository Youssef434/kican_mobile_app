import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TraitementComponent extends StatelessWidget {
  double percentage;
  String traitementName;

  TraitementComponent(
      {Key? key, required this.percentage, required this.traitementName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: const <BoxShadow>[
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, .25),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, 4))
        ],
      ),
      child: Container(
        child:
          CircularPercentIndicator(
            radius: 36,
            lineWidth: 7.2,
            percent: percentage,
            center: Text(
              "${(percentage * 100).toInt()}%",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(0, 205, 188, 1),
              ),
            ),
            progressColor: const Color.fromRGBO(0, 205, 188, 1),
            backgroundColor: Colors.transparent,
            animation: true,
            animationDuration: 1200,
            reverse: true,
            footer: Container(
              margin: const EdgeInsets.only(top: 5),
              child: Text(
                traitementName,
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(49, 49, 51, 1),
              ),
              ),
            ),
          ),
      ),
    );
  }
}
