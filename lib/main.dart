import 'package:flutter/material.dart';
import 'package:kican_mobile_app/screens/child_progress_page.dart';
import 'package:kican_mobile_app/screens/doctor_feedback.dart';
import 'package:kican_mobile_app/screens/feedback_page.dart';
import 'package:kican_mobile_app/screens/home_page.dart';
import 'package:kican_mobile_app/screens/personal_information.dart';
import 'package:kican_mobile_app/screens/settings.dart';
import 'package:kican_mobile_app/screens/verification_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const VerificationPage(),
      // home: const FeedbackPage(),
      // home: const DoctorFeedback(),
      // home: const Settings(),
      // home: const HomePage(),
      // home: const ChildProgressPage(),
      home: const PersonalInformation(),
    );
  }
}

