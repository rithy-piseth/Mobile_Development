import 'package:flutter/material.dart';

import 'ui/screens/temperature_screen.dart';
import 'ui/screens/welcome_screen.dart';

class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  State<TemperatureApp> createState() {
    return _TemperatureAppState();
  }
}

class _TemperatureAppState extends State<TemperatureApp> {
  bool showWelcomeScreen = true;

  @override
  Widget build(BuildContext context) {
    Widget currentScreen;

    if (showWelcomeScreen) {
      currentScreen = WelcomeScreen(
        onStart: () {
          setState(() {
            showWelcomeScreen = false;
          });
        },
      );
    } else {
      currentScreen = TemperatureScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff16C062),
                Color(0xff00BCDC),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: currentScreen,
        ),
      ),
    );
  }
}

void main() {
  runApp(const TemperatureApp());
}