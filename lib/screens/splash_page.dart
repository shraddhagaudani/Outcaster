import 'dart:async';
import 'package:flutter/material.dart';
import 'package:stepper_app/screens/stepper_page.dart';

class Splash_page extends StatefulWidget {
  const Splash_page({Key? key}) : super(key: key);

  @override
  State<Splash_page> createState() => _Splash_pageState();
}

class _Splash_pageState extends State<Splash_page> {
  changeScreen() {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      Navigator.of(context).pushReplacementNamed('Stepper_page');
    });
  }

  @override
  void initState() {
    super.initState();
    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlutterLogo(size: 200),
            CircularProgressIndicator(color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
