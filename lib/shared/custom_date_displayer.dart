import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDateDisplayer extends StatelessWidget {
  int day;
  String month;
  int year;

  CustomDateDisplayer(
      {required this.day, required this.month, required this.year});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _AppointementDateElement(value: day),
        SizedBox(width: 6,),
        _AppointementDateElement(value: month),
        SizedBox(width: 6,),
        _AppointementDateElement(value: year),
      ],
    );
  }
}

class _AppointementDateElement extends StatelessWidget {
  Object value;

  _AppointementDateElement({required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6,),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(239, 255, 254, 1),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(value.toString(), style: GoogleFonts.poppins(
        color: const Color.fromRGBO(167, 211, 214, 1),
        fontSize: 12,
        fontWeight: FontWeight.w800,
      ),),

    );
  }
}
