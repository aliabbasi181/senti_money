import 'package:flutter/material.dart';
import 'package:senti/Views/intro.dart';
import 'package:senti/constants.dart';
import 'package:senti/utilities.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    _move();
    super.initState();
  }

  _move() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const Intro()),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: Container(
        height: Utilities.getSize(context).height,
        width: Utilities.getSize(context).width,
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: Colors.white),
            ),
            child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                    child: Container(
                  height: 29,
                  width: 77,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image/senti_logo.png"))),
                ))),
          ),
        ),
      ),
    );
  }
}
