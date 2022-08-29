import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextSessionComponent extends StatelessWidget {
  int day;
  String month;
  int year;

  NextSessionComponent({
    Key? key,
    required this.day,
    required this.month,
    required this.year,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 32),
      padding: const EdgeInsets.only(top: 5, bottom: 25, left: 45, right: 15),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(0, 205, 188, 1),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const <BoxShadow>[
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, .25),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, 4))
        ],
      ),
      child: Column(
        children: [
          Text('Next session', style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),),
          const SizedBox(height: 4,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _AppointementDateElement(value: day),
                  const SizedBox(width: 6,),
                  _AppointementDateElement(value: month),
                  const SizedBox(width: 6,),
                  _AppointementDateElement(value: year),
                ],
              ),
              const Icon(Icons.more_horiz, size: 62, color: Colors.white,),
            ],
          )
        ],
      ),
    );
  }
}

class _AppointementDateElement extends StatelessWidget {
  Object value;

  _AppointementDateElement({required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(239, 255, 254, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        value.toString(),
        style: GoogleFonts.poppins(
          color: const Color.fromRGBO(167, 211, 214, 1),
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
