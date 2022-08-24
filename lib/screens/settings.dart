import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kican_mobile_app/components/settings/account_settings_form.dart';
import 'package:kican_mobile_app/components/settings/settings_field.dart';
import 'package:kican_mobile_app/services/settings/generate_settings_fields.dart';
import 'package:kican_mobile_app/shared/custom_text_input.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String enabled = "Account";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: const EdgeInsets.only(left: 20, top: 10),
            child: Text(
              'Settings',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(0, 205, 188, 1),
              ),
            ),
          ),
        ),
        backgroundColor: const Color.fromRGBO(242, 255, 254, 1),
        elevation: 0,
      ),
      backgroundColor: const Color.fromRGBO(242, 255, 254, 1),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 98,
              height: 98,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromRGBO(0, 205, 188, 1),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, .25),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 4))
                ],
              ),
              child: Image.asset('images/profile.png'),
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Text(
                  'Ahmed Swamer',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(0, 205, 188, 1),
                  ),
                ),
                Text(
                  'ahmed.swamer@gmail.com',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(167, 211, 214, 1),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(height: 20,),
                ...generateSettingsFields(enabled, (String val) {
                  setState((){
                    enabled = val;
                  });
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
