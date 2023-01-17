import 'package:flutter/material.dart';
import 'package:stepper_app/screens/splash_page.dart';
import 'package:stepper_app/screens/stepper_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.deepOrange,
          secondary: Colors.deepOrange,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      routes: {
        '/': (context) => const Splash_page(),
        'Stepper_page': (context) => const Stepper_page(),
      },
    ),
  );
}
