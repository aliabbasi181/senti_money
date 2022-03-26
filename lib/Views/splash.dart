import 'package:flutter/material.dart';
import 'package:senti/utilities.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff005CEE),
      body: Container(
        height: Utilities.getSize(context).height,
        width: Utilities.getSize(context).width,
      ),
    );
  }
}
