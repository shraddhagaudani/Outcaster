import 'package:flutter/material.dart';

class Stepper_page extends StatefulWidget {
  const Stepper_page({Key? key}) : super(key: key);

  @override
  State<Stepper_page> createState() => _Stepper_pageState();
}

class _Stepper_pageState extends State<Stepper_page> {
  int initialstep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          "Stepper App",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.normal),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stepper(
              currentStep: initialstep,
              onStepContinue: () {
                setState(() {
                  if (initialstep < 2) {
                    initialstep++;
                  }
                });
              },
              onStepCancel: () {
                setState(() {
                  if (initialstep > 0) {
                    initialstep--;
                  }
                });
              },
              onStepTapped: (val) {
                setState(() {
                  initialstep = val;
                });
              },
              steps: [
                Step(
                  isActive: (initialstep >= 0) ? true : false,
                  title: const Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  content: Column(
                    children: const [
                      TextField(
                        decoration: InputDecoration(
                          prefix: Icon(Icons.person),
                          border: UnderlineInputBorder(),
                          hintText: "Full Name*",
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefix: Icon(Icons.mail),
                          border: UnderlineInputBorder(),
                          hintText: "Email-Id",
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefix: Icon(Icons.lock),
                          border: UnderlineInputBorder(),
                          hintText: "Password*",
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefix: Icon(Icons.lock),
                          border: UnderlineInputBorder(),
                          hintText: "Confirm Password*",
                        ),
                      ),
                    ],
                  ),
                ),
                Step(
                  isActive: (initialstep >= 1) ? true : false,
                  title: const Text(
                    "Log in",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  content: Column(
                    children: const [
                      TextField(
                        decoration: InputDecoration(
                          prefix: Icon(Icons.person),
                          hintText: "User Name",
                          border: UnderlineInputBorder(),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefix: Icon(Icons.mail),
                          border: UnderlineInputBorder(),
                          hintText: "Password*",
                        ),
                      ),
                    ],
                  ),
                ),
                Step(
                  isActive: (initialstep >= 2) ? true : false,
                  state: StepState.complete,
                  title: const Text(
                    "Home",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  content: Column(
                    children: const [Text("Complete")],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
