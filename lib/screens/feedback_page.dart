import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kican_mobile_app/shared/custom_text_input.dart';
import 'package:kican_mobile_app/shared/global_shadow.dart';

import '../services/shared/generate_stars.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        shadowColor: const Color.fromRGBO(242, 255, 254, 1),
        centerTitle: true,
        toolbarHeight: 120,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(MediaQuery.of(context).size.width, 80.0),
          ),
        ),
        title: Text(
          'Your Feedback Matters!',
          style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        backgroundColor: const Color.fromRGBO(0, 205, 188, 1),
      ),
      backgroundColor: const Color.fromRGBO(242, 255, 254, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 39,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'Third session',
              style: GoogleFonts.poppins(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(0, 205, 188, 1)),
            ),
          ),
          Form(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 39, horizontal: 37),
              child: Column(
                children: [
                  Interaction(name: 'Interaction', value: 3),
                  Interaction(name: 'Interaction', value: 6),
                  Interaction(name: 'Interaction', value: 5),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Your comment',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: const Color.fromRGBO(0, 205, 188, 1),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      CustomTextInput(hint: 'Insert your comment', maxLine: 6,),
                      const SizedBox(
                        height: 22,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: GlobalShadow(
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color.fromRGBO(0, 205, 188, 1)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 30))),
                              onPressed: () {},
                              child: Text(
                                'Submit',
                                style: GoogleFonts.poppins(
                                    fontSize: 13, fontWeight: FontWeight.w700),
                              )),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Interaction extends StatefulWidget {
  String name;
  int value;

  Interaction({Key? key, required this.name, required this.value})
      : super(key: key);

  @override
  State<Interaction> createState() => _InteractionState();
}

class _InteractionState extends State<Interaction> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.name,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
              fontSize: 13,
              color: const Color.fromRGBO(0, 205, 188, 1),
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 35),
          child: Row(children: getAllStars(widget.value)),
        ),
        const SizedBox(
          height: 17,
        )
      ],
    );
  }
}
