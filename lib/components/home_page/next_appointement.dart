import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kican_mobile_app/shared/custom_date_displayer.dart';

class NextAppointement extends StatelessWidget {
  const NextAppointement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          color: const Color.fromRGBO(0, 205, 188, 1),
        ),
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 40, top: 35, bottom: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 171,
                    child: Text(
                      'The next appointement of your child is on',
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  CustomDateDisplayer(day: 23, month: 'October', year: 2022),
                ],
              ),
            ),
            Positioned(
              child: Image.asset(
                'images/doctor.png',
                // height: 10,
              ),
              right: -10,
              bottom: 0,
            ),
          ],
        ));
  }
}
