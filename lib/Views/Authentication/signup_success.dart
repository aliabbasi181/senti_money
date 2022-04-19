import 'dart:io';

import 'package:flutter/material.dart';
import 'package:senti/Views/Senti/home/home.dart';
import 'package:senti/utilities.dart';

class SignupSuccess extends StatefulWidget {
  const SignupSuccess({Key? key}) : super(key: key);

  @override
  State<SignupSuccess> createState() => _SignupSuccessState();
}

class _SignupSuccessState extends State<SignupSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Utilities.getSize(context).height,
        width: Utilities.getSize(context).width,
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: SafeArea(
            bottom: Platform.isAndroid,
            child: Stack(
              children: [
                Container(
                  height: Utilities.getSize(context).height * 0.65,
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/image/success_tick_icon.png",
                        height: 114,
                        width: 114,
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Text(
                        "Success!",
                        style: Utilities.fontStyle(
                            28, FontWeight.w700, Colors.black),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      Text("You account has successfuly been created Horray!",
                          textAlign: TextAlign.center,
                          style: Utilities.fontStyle(
                              15, FontWeight.w500, const Color(0xffA4A2A2))),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SentiHome()));
                    },
                    child: Container(
                      width: Utilities.getSize(context).width,
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(6)),
                      child: Text(
                        "Start using Senti",
                        textAlign: TextAlign.center,
                        style: Utilities.fontStyle(
                            16, FontWeight.bold, Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
