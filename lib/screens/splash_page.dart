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
    Timer.periodic(const Duration(seconds: 2), (timer) {
      Navigator.of(context).pushReplacementNamed('Stepper_page');
    }
    );
  }

  @override
  void initState() {
    super.initState();
    changeScreen();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
            ),
            Image(
              image: NetworkImage(
                  "https://th.bing.com/th/id/OIP.10RECXGTH5NyaeBg5yD1pwHaDp?w=280&h=172&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
            ),
          ],
        ),
      ),
    );
  }
}
