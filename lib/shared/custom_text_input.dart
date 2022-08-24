import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextInput extends StatefulWidget {
  String? hint;
  String? value;
  int maxLine;
  bool isPassword;
  bool isEnabled;
  double? height;
  double bottom;
  IconData? iconData;

  CustomTextInput(
      {this.hint, this.value, this.maxLine = 1, this.isPassword = false, this.isEnabled = false, this.height, this.bottom = 0, this.iconData});

  @override
  State<CustomTextInput> createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  bool isEnabled = true;
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(left: 15, bottom: widget.bottom),
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: Colors.white,
        boxShadow: const <BoxShadow>[
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, .25),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, 4))
        ],
      ),
      child: TextFormField(
        enabled: isEnabled,
        initialValue: widget.value,
        obscureText: widget.isPassword,
        style: GoogleFonts.poppins(
          fontSize: 13,
          color: !isEnabled ? const Color.fromRGBO(175, 174, 190, 1) : const Color.fromRGBO(0, 0, 0, 1),
        ),
        keyboardType: TextInputType.multiline,
        maxLines: widget.maxLine,
        decoration: InputDecoration(
          hintText: widget.hint,
          hintStyle: GoogleFonts.poppins(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(175, 174, 190, 1),
          ),
          border: InputBorder.none,
          suffixIcon: widget.iconData != null ? TextButton(
            style: TextButton.styleFrom(primary: const Color.fromRGBO(242, 255, 254, 1)),
            onPressed: () {
              print('fkjkjg');
              setState(() {
                isEnabled = !isEnabled;
              });
            },
            child: const Icon(
              Icons.mode_edit_outline_rounded,
              size: 16,
              color: Color.fromRGBO(0, 205, 188, 1),
            ),
          ) : null,
        ),
      ),
    );
  }
}
