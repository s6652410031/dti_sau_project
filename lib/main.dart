import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/welcome_ui.dart';

void main() {
  runApp(
    // Call the main widget class of the app
    const DtiSau(),
  );
}

//-------------------------
class DtiSau extends StatefulWidget {
  const DtiSau({super.key});

  @override
  State<DtiSau> createState() => _DtiSauState();
}

class _DtiSauState extends State<DtiSau> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeUI(), // Corrected to instantiate WelcomeUI
    );
  }
}