import 'package:flutter/material.dart';
import 'package:senti/Views/Authentication/login.dart';
import 'package:senti/constants.dart';
import 'package:senti/utilities.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  int slideNo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE8E8E9),
      body: Container(
        child: Column(
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 17),
                width: Utilities.getSize(context).width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 15)
                    ]),
                child: const SafeArea(
                  child: Image(
                      width: 77,
                      height: 29,
                      image: AssetImage("assets/image/senti_logo.png")),
                ),
              ),
            ),
            Container(
              width: Utilities.getSize(context).width,
              height: Utilities.getSize(context).height * 0.45,
            ),
            Expanded(
                child: Container(
                    padding:
                        const EdgeInsets.only(top: 51, left: 19, right: 19),
                    width: Utilities.getSize(context).width,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 15)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AnimatedSwitcher(
                            switchInCurve: Curves.fastLinearToSlowEaseIn,
                            duration: const Duration(milliseconds: 300),
                            child: slideNo == 0
                                ? Text(
                                    "Send money",
                                    key: ValueKey<int>(slideNo),
                                    style: Utilities.fontStyle(
                                        15,
                                        FontWeight.w400,
                                        const Color(0xff717E95)),
                                  )
                                : slideNo == 1
                                    ? Text(
                                        "Receive money",
                                        key: ValueKey<int>(slideNo),
                                        style: Utilities.fontStyle(
                                            15,
                                            FontWeight.w400,
                                            const Color(0xff717E95)),
                                      )
                                    : Text(
                                        "Earn points",
                                        key: ValueKey<int>(slideNo),
                                        style: Utilities.fontStyle(
                                            15,
                                            FontWeight.w400,
                                            const Color(0xff717E95)),
                                      )),
                        Padding(
                          padding: const EdgeInsets.only(right: 80),
                          child: AnimatedSwitcher(
                              switchInCurve: Curves.fastLinearToSlowEaseIn,
                              duration: const Duration(milliseconds: 300),
                              child: slideNo == 0
                                  ? Text(
                                      "It was brought up in conversation and from that moment, I was couldn’t stop",
                                      key: ValueKey<int>(slideNo),
                                      style: Utilities.fontStyle(
                                          18, FontWeight.bold, Colors.black),
                                    )
                                  : slideNo == 1
                                      ? Text(
                                          "In this article, I am going to pass on what I have learnt and show some cool",
                                          key: ValueKey<int>(slideNo),
                                          style: Utilities.fontStyle(18,
                                              FontWeight.bold, Colors.black),
                                        )
                                      : Text(
                                          "Let’s start by a very simple example where we will hide/show a widget when the",
                                          key: ValueKey<int>(slideNo),
                                          style: Utilities.fontStyle(18,
                                              FontWeight.bold, Colors.black),
                                        )),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 5),
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                  color: slideNo == 0
                                      ? const Color(0xff717E95)
                                      : null,
                                  border: slideNo != 0
                                      ? Border.all(
                                          color: const Color(0xff717E95))
                                      : null,
                                  borderRadius: BorderRadius.circular(100)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 5),
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                  color: slideNo == 1
                                      ? const Color(0xff717E95)
                                      : null,
                                  border: slideNo != 1
                                      ? Border.all(
                                          width: 2,
                                          color: const Color(0xff717E95))
                                      : null,
                                  borderRadius: BorderRadius.circular(100)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 5),
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                  color: slideNo == 2
                                      ? const Color(0xff717E95)
                                      : null,
                                  border: slideNo != 2
                                      ? Border.all(
                                          width: 2,
                                          color: const Color(0xff717E95))
                                      : null,
                                  borderRadius: BorderRadius.circular(100)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Visibility(
                              visible: slideNo != 2,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Login()),
                                      (route) => false);
                                },
                                child: Text(
                                  "Skip now",
                                  style: Utilities.fontStyle(15,
                                      FontWeight.w400, const Color(0xff717E95)),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                if (slideNo == 2) {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Login()),
                                      (route) => false);
                                }
                                setState(() {
                                  if (slideNo == 2)
                                    slideNo = 0;
                                  else
                                    slideNo++;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 37, vertical: 12),
                                decoration: BoxDecoration(
                                    color: Constants.primaryColor,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text(
                                  slideNo != 2 ? "Next" : "Get Started",
                                  style: Utilities.fontStyle(
                                      15, FontWeight.w400, Colors.white),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
