
import 'package:flutter/material.dart';
import 'package:kican_mobile_app/services/settings/generate_account_form.dart';
import 'package:kican_mobile_app/shared/custom_text_input.dart';

class AccountSettingsForm extends StatefulWidget {
  const AccountSettingsForm({Key? key}) : super(key: key);

  @override
  State<AccountSettingsForm> createState() => _AccountSettingsFormState();
}

class _AccountSettingsFormState extends State<AccountSettingsForm> {
  @override
  Widget build(BuildContext context) {

    return Form(child: Column(
      children: [
        ...generateAccountForm()
      ],
    ));
  }
}
