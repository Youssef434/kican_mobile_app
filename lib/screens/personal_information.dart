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
          toolbarHeight: 130,
          elevation: 0,
          title: Container(
            child: Image.asset(
              'images/information_background.png',
              height: 135,
            ),
          ),
        ),
        body: Container(
            color: const Color.fromRGBO(242, 255, 254, 1),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              'Name of the kid',
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
                          Container(
                            child: CustomTextInput(
                              hint: 'Insert your comment',
                              fontSize: 11,
                            ),
                            width: 160,
                            height: 35,
                          ),
                        ]),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name of the kid',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: const Color.fromRGBO(0, 205, 188, 1),
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Container(
                            child: CustomTextInput(
                              hint: 'Insert your comment',
                              fontSize: 11,
                            ),
                            width: 155,
                            height: 35,
                          ),
                        ]),
                    // Container(child: CustomTextInput(hint: 'Insert your comment',), width: 160,),
                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              'Name of the kid',
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
                          Container(
                            child: CustomTextInput(
                              hint: 'Insert your comment',
                              fontSize: 11,
                            ),
                            height: 35,
                            width: 210,
                          ),
                        ]),
                    // Container(child: CustomTextInput(hint: 'Insert your comment',), width: 160,),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              'Name of the kid',
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
                          Container(
                            child: CustomTextInput(
                              hint: 'Insert your comment',
                              fontSize: 11,
                            ),
                            height: 35,
                            width: 210,
                          ),
                        ]),
                    // Container(child: CustomTextInput(hint: 'Insert your comment',), width: 160,),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              'Name of the kid',
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
                          Container(
                            child: CustomTextInput(
                              hint: 'Insert your comment',
                              fontSize: 11,
                            ),
                            height: 35,
                            width: 210,
                          ),
                        ]),
                    // Container(child: CustomTextInput(hint: 'Insert your comment',), width: 160,),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),

              ],
            )));
  }
}
