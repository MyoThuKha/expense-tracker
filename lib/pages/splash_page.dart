import 'package:flutter/material.dart';
import '../utilities/screen_size.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  void goToHome(context) async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, "/home");
  }

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    goToHome(context);
    return Scaffold(
      body: Center(
        child: Text("Splash Screen"),
      ),
    );
  }
}
