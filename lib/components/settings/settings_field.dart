import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/icon.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsField extends StatefulWidget {
  IconData icon;
  String title;
  bool expanded;
  Function changeEnabled;

  SettingsField(
      {required this.icon,
      required this.title,
      this.expanded = false,
      required this.changeEnabled});

  @override
  State<SettingsField> createState() => _SettingsFieldState();
}

class _SettingsFieldState extends State<SettingsField> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style:
          TextButton.styleFrom(primary: const Color.fromRGBO(242, 255, 254, 1)),
      onPressed: () {
        setState(() {
          widget.changeEnabled(widget.title);
        });
      },
      child: SizedBox(
        height: 35,
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  widget.icon,
                  size: 20,
                  color: const Color.fromRGBO(0, 205, 188, 1),
                ),
                const SizedBox(
                  width: 15,
                ),
                Baseline(
                  baseline: 18.9,
                  baselineType: TextBaseline.alphabetic,
                  child: Text(
                    widget.title,
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 205, 188, 1),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
