import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kican_mobile_app/components/child_progress/next_session_component.dart';
import 'package:kican_mobile_app/components/child_progress/traitement_component.dart';
import 'package:kican_mobile_app/services/child_progress/generate_traitement.dart';

import '../components/child_progress/session_card_component.dart';

class ChildProgressPage extends StatelessWidget {
  const ChildProgressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(242, 255, 254, 1),
        toolbarHeight: 120,
        elevation: 0,
        centerTitle: true,
        title: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 78,
                width: 89,
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
                child: Image.asset('images/rayan.png'),
              ),
              // const SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Our Hero Rayan!',
                      style: GoogleFonts.poppins(
                          color: const Color.fromRGBO(0, 205, 188, 1),
                          fontSize: 24,
                          fontWeight: FontWeight.w600)),
                  Text(
                    'Let’s track his progress',
                    style: GoogleFonts.poppins(
                      color: const Color.fromRGBO(167, 211, 214, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromRGBO(242, 255, 254, 1),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: getTraitements(1),
            ),
            NextSessionComponent(day: 23, month: 'October', year: 2017,),
            SessionCardComponent(sessionDate: DateTime(2022, 10, 18), sessionTitle: 'Third session',),
            const SizedBox(height: 25,),
            SessionCardComponent(sessionDate: DateTime(2022, 10, 8), sessionTitle: 'Second session', feedbackGiven: true,),
          ]),
        ),
      ),
    );
  }
}
