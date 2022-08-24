import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorFeedback extends StatefulWidget {
  const DoctorFeedback({Key? key}) : super(key: key);

  @override
  State<DoctorFeedback> createState() => _DoctorFeedbackState();
}

class _DoctorFeedbackState extends State<DoctorFeedback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        shadowColor: const Color.fromRGBO(242, 255, 254, 1),
        centerTitle: true,
        toolbarHeight: 150,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(MediaQuery.of(context).size.width, 80.0),
          ),
        ),
        title: Text(
          "Let's see the doctor's\n feedback",
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: const Color.fromRGBO(0, 205, 188, 1)),
        ),
        backgroundColor: const Color.fromRGBO(242, 255, 254, 1),
      ),
      backgroundColor: const Color.fromRGBO(0, 205, 188, 1),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('images/message.png'),
            Positioned(
              bottom: 50,
              child: Text("Third Session", textAlign: TextAlign.center, style: GoogleFonts.poppins(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(0, 205, 188, 1),
              ),),
            ),
            Positioned(
              top: 70,
              child: Container(
                height: 120,
                width: 260,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0),
                ),
                child: Column(
                  children: [
                    Text("Doctor's comment ", style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(0, 205, 188, 1),
                    ),),
                    SizedBox(height: 15,),
                    Text('Lorem ipsum dolor sit amet. Sed unde reiciendis At temporibus quidem sit labore galisum ab aspernatur vero qui explicabo nulla est iure voluptatibus. ', style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(175, 174, 190, 1),
                    ),),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text("Amine hindam - Rayan's Doctor",style: GoogleFonts.poppins(
                        fontSize: 9,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(244, 221, 165, 1),
                      ),),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
