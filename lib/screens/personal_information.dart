import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../shared/custom_text_input.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(0, 205, 188, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          toolbarHeight: 150,
          elevation: 0,
          title: Container(
            child: Stack(
              children: [Positioned(
                child: Image.asset(
                  'images/information_background.png',
                  height: 150,
                ),
              ),
                Positioned(
                  top: 67,
                  left: 50,
                  child: Image.asset(
                  'images/rayan.png',
                    scale: .85,
              ),
                ),]
            ),
          ),
        ),
        body: Container(
            color: const Color.fromRGBO(242, 255, 254, 1),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 45),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  'Name of the kid :',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                    color: const Color.fromRGBO(0, 205, 188, 1),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              SizedBox(
                                width: 160,
                                height: 35,
                                child: CustomTextInput(
                                  hint: 'Rayan Swamer',
                                  fontSize: 11,
                                ),
                              ),
                            ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Name of the kid's parent :",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10,
                                  color: const Color.fromRGBO(0, 205, 188, 1),
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              SizedBox(
                                width: 155,
                                height: 35,
                                child: CustomTextInput(
                                  hint: 'Ahmed Swamer',
                                  fontSize: 11,
                                ),
                              ),
                            ]),
                        // Container(child: CustomTextInput(hint: 'Insert your comment',), width: 160,),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Date of birth :',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                    color: const Color.fromRGBO(0, 205, 188, 1),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 35,
                                    width: 35,
                                    child:
                                    CustomTextInput(
                                      hint: 'D',
                                      fontSize: 11,
                                    ),
                                  ),
                                  const SizedBox(width: 20,),
                                  SizedBox(
                                    height: 35,
                                    width: 35,
                                    child:
                                    CustomTextInput(
                                      hint: 'M',
                                      fontSize: 11,
                                    ),
                                  ),
                                  const SizedBox(width: 20,),
                                  SizedBox(
                                    height: 35,
                                    width: 35,
                                    child:
                                    CustomTextInput(
                                      hint: 'Y',
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                        // Container(child: CustomTextInput(hint: 'Insert your comment',), width: 160,),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Cancer type :',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                    color: const Color.fromRGBO(0, 205, 188, 1),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              SizedBox(
                                height: 35,
                                width: 210,
                                child: CustomTextInput(
                                  hint: 'Blood cancer',
                                  fontSize: 11,
                                ),
                              ),
                            ]),
                        // Container(child: CustomTextInput(hint: 'Insert your comment',), width: 160,),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Set a calendar :',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                    color: const Color.fromRGBO(0, 205, 188, 1),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                            ]),
                        // Container(child: CustomTextInput(hint: 'Insert your comment',), width: 160,),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                )

              ],
            )));
  }
}
