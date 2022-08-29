import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChildProgressButton extends StatelessWidget {
  const ChildProgressButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 3),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(0, 205, 188, 1),
        borderRadius: BorderRadius.circular(36),
      ),
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 171,child: Text("View your child's treatment progress", style: GoogleFonts.poppins(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),),),
            SizedBox(width: 20,),
            Image.asset('images/child_icon.png', scale: 1.25,)
          ],
        ),
      ),
    );
  }
}
