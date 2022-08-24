import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kican_mobile_app/components/settings/account_settings_form.dart';
import 'package:kican_mobile_app/components/settings/settings_field.dart';

List<Widget> generateSettingsFields(String enabled, Function changeEnabled) {
  Map<String, Map<String, Object>> data =
  {
    'Account': {'icon': Icons.person, 'details': AccountSettingsForm()},
    'Privacy & Security': {'icon': Icons.security, 'details': Container()},
    'Language': {'icon': Icons.language, 'details': Container()},
    'Contact us': {'icon': Icons.contact_phone, 'details': Container()},
    'Logout': {'icon': Icons.arrow_back_outlined, 'details': Container()},
  };
  List<Widget> fields = [];

  for (var val in data.entries) {
    fields.add(SettingsField(icon: val.value['icon'] as IconData, title: val.key, changeEnabled: changeEnabled));
    if (val.key == enabled) {
      fields.add(val.value['details'] as Widget);
    }
  }

  return fields;

}