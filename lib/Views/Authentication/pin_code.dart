import 'package:flutter/material.dart';
import 'package:senti/Views/Authentication/choose_country.dart';
import 'package:senti/Views/Senti/home/home.dart';
import 'package:senti/utilities.dart';

class CreatePinCode extends StatefulWidget {
  String pin_type;
  CreatePinCode({Key? key, required this.pin_type}) : super(key: key);

  @override
  State<CreatePinCode> createState() => _CreatePinCodeState();
}

class _CreatePinCodeState extends State<CreatePinCode> {
  List<int> pin = [];
  List<int> confirm_pin = [];

  _pinTapped(int digit) {
    setState(() {
      if (pin.length < 4) {
        pin.add(digit);
        if (pin.length == 4) {
          if (widget.pin_type == "login") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SentiHome()));
          } else {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ChooseCountry()));
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: Utilities.getSize(context).height,
        width: Utilities.getSize(context).width,
        padding: EdgeInsets.only(
            top: 60,
            bottom: Utilities.getSize(context).width * 0.125,
            left: Utilities.getSize(context).width * 0.125,
            right: Utilities.getSize(context).width * 0.125),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.pin_type == "signup"
                  ? "Create your pin code"
                  : "Enter your pin",
              style: Utilities.fontStyle(22, FontWeight.bold, Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Use this in security to log into Senti",
              style: Utilities.fontStyle(
                  12, FontWeight.w500, const Color(0xffa4a2a2)),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              width: Utilities.getSize(context).width * 0.5,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        height: 13,
                        width: 13,
                        decoration: BoxDecoration(
                            color: pin.length > 0 ? Colors.black : null,
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                            color: pin.length > 1 ? Colors.black : null,
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                            color: pin.length > 2 ? Colors.black : null,
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                            color: pin.length > 3 ? Colors.black : null,
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Spacer(),
            Table(
              children: [
                TableRow(children: [
                  Center(
                    child: InkWell(
                      onTap: () {
                        _pinTapped(1);
                      },
                      child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "1",
                          style: Utilities.fontStyle(
                              22, FontWeight.w700, Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        _pinTapped(2);
                      },
                      child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "2",
                          style: Utilities.fontStyle(
                              22, FontWeight.w700, Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        _pinTapped(3);
                      },
                      child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "3",
                          style: Utilities.fontStyle(
                              22, FontWeight.w700, Colors.black),
                        ),
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        _pinTapped(4);
                      },
                      child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "4",
                          style: Utilities.fontStyle(
                              22, FontWeight.w700, Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        _pinTapped(5);
                      },
                      child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "5",
                          style: Utilities.fontStyle(
                              22, FontWeight.w700, Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        _pinTapped(6);
                      },
                      child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "6",
                          style: Utilities.fontStyle(
                              22, FontWeight.w700, Colors.black),
                        ),
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        _pinTapped(7);
                      },
                      child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "7",
                          style: Utilities.fontStyle(
                              22, FontWeight.w700, Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        _pinTapped(8);
                      },
                      child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "8",
                          style: Utilities.fontStyle(
                              22, FontWeight.w700, Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        _pinTapped(9);
                      },
                      child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "9",
                          style: Utilities.fontStyle(
                              22, FontWeight.w700, Colors.black),
                        ),
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {});
                      },
                      child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          widget.pin_type == "signup" ? "" : "Forgot?",
                          style: Utilities.fontStyle(
                              14, FontWeight.w400, const Color(0xffa4a2a2)),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        _pinTapped(0);
                      },
                      child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "0",
                          style: Utilities.fontStyle(
                              22, FontWeight.w700, Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (pin.isNotEmpty) {
                            pin.removeLast();
                          }
                        });
                      },
                      child: Container(
                          color: Colors.white,
                          padding: const EdgeInsets.all(20),
                          child: const Icon(
                            Icons.backspace_outlined,
                            color: Color(0xffa4a2a2),
                          )),
                    ),
                  ),
                ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
