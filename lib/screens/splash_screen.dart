import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tehnokopi/screens/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

//durasi splash screen
class _SplashScreenState extends State<SplashScreen> {
  goToNextPage() {
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: ((context) => const LoginPage()),
        ),
      );
    });
  }

  @override
  void initState() {
    //life cycle flutter
    super.initState();
    goToNextPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[50],
        body: Center(child: Image.asset("assets/img/logo.png")));
  }
}
