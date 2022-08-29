import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kican_mobile_app/services/shared/generate_stars.dart';

class TraitementScore extends StatefulWidget {
  int score;
  String traitementName;

  TraitementScore({Key? key, required this.score, required this.traitementName})
      : super(key: key);

  @override
  State<TraitementScore> createState() => _TraitementScoreState();
}

class _TraitementScoreState extends State<TraitementScore> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Row(
        children: getAllStars(widget.score, size: 16, horizontalPadding: .7)),
        const SizedBox(height: 3,),
        Text(widget.traitementName, textAlign: TextAlign.center, style: GoogleFonts.poppins(
          fontSize: 7,
          color: const Color.fromRGBO(104, 103, 106, 1),
          fontWeight: FontWeight.w600,
        ),)
    ]);
  }
}
