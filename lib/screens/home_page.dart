import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kican_mobile_app/components/home_page/next_appointement.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(242, 255, 254, 1),
        toolbarHeight: 120,
        elevation: 0,
        centerTitle: true,
        title: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5, ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('👋🏻  Hi Ahmed', style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(0, 205, 188, 1),
                    fontSize: 24,
                    fontWeight: FontWeight.w600
                  )),
                  Text('How is Rayan feeling today?', style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(167, 211, 214, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ), textAlign: TextAlign.right,),
                ],
              ),
              Container(
                height: 63,
                width: 63,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(0, 205, 188, 1),
                  borderRadius: BorderRadius.circular(50),
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children : [NextAppointement()],
        ),
      ),
      backgroundColor: const Color.fromRGBO(242, 255, 254, 1),
    );
  }
}
