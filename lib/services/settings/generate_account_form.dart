import 'package:flutter/material.dart';
import 'package:kican_mobile_app/shared/custom_text_input.dart';

List<Widget> generateAccountForm() {
  var data = [
    _InputSpecs(value: 'Ahmed Swamer'),
    _InputSpecs(value: 'ahmed.swamer@gmail.com'),
    _InputSpecs(value: 'dedkedkledkle', isPassword: true),
    _InputSpecs(value: '+212670339442'),
  ];
  List<Widget> widgets = [];

  for (var val in data) {
    widgets.add(CustomTextInput(value: val.value, isPassword: val.isPassword, height: 32, iconData: Icons.mode_edit_outline_outlined, bottom: 5,));
    widgets.add(const SizedBox(height: 12,));
  }

  return widgets;
}

class _InputSpecs {
  String value;
  bool isPassword;
  _InputSpecs({required this.value, this.isPassword = false});
}