import 'package:flutter/material.dart';
import 'package:senti/Views/Authentication/pin_code.dart';
import 'package:senti/utilities.dart';

import '../../constants.dart';

Widget chooseAccountDialog(BuildContext context) {
  return AlertDialog(
    title: Text("Choose account for Senti",
        style: Utilities.fontStyle(18, FontWeight.w700, Colors.black)),
    contentPadding: const EdgeInsets.fromLTRB(10, 30, 10, 30),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CreatePinCode(
                          pin_type: "login",
                        )));
          },
          leading: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: const Color(0xfff2f2f2),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Text(
                  "DS",
                  style: Utilities.fontStyle(16, FontWeight.bold, Colors.black),
                ),
              )),
          title: Text(
            "Dennis savai",
            style: Utilities.fontStyle(16, FontWeight.w700, Colors.black),
          ),
          subtitle: Text(
            "dsavai@gmail.com",
            style: Utilities.fontStyle(
                12, FontWeight.w500, const Color(0xffA4A2A2)),
          ),
        ),
        ListTile(
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: const Color(0xfff2f2f2),
                borderRadius: BorderRadius.circular(100)),
            child: const Icon(Icons.person_add_rounded),
          ),
          title: Text(
            "Use another account",
            style: Utilities.fontStyle(14, FontWeight.w400, Colors.black),
          ),
        )
      ],
    ),
    // actionsPadding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
    // actions: [
    //   InkWell(
    //     onTap: () {
    //       Navigator.pop(context);
    //     },
    //     child: Container(
    //       padding: const EdgeInsets.fromLTRB(15, 6, 15, 6),
    //       decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(3), border: Border.all()),
    //       child: Text(
    //         buttonText,
    //         style: const TextStyle(
    //             color: Colors.black,
    //             fontFamily: "Montserrat",
    //             fontWeight: FontWeight.w600,
    //             fontSize: 14),
    //       ),
    //     ),
    //   ),
    // ],
  );
}
