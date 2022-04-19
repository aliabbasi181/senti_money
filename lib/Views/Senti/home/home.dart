import 'package:flutter/material.dart';

class SentiHome extends StatefulWidget {
  const SentiHome({Key? key}) : super(key: key);

  @override
  State<SentiHome> createState() => _SentiHomeState();
}

class _SentiHomeState extends State<SentiHome> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Senti Money Home"),
      ),
    );
  }
}
