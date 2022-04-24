import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senti/Views/Authentication/signup_success.dart';
import 'package:senti/Views/Authentication/widgets.dart';
import 'package:senti/constants.dart';
import 'package:senti/utilities.dart';

class EnterPersonDetails extends StatefulWidget {
  var country;
  EnterPersonDetails({Key? key, required this.country}) : super(key: key);

  @override
  State<EnterPersonDetails> createState() => _EnterPersonDetailsState();
}

class _EnterPersonDetailsState extends State<EnterPersonDetails> {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController ocupation = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController zipCode = TextEditingController();
  String dateOfBirth = "dd/mm/yyyy";
  String city = "Select city";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: Platform.isAndroid,
        child: SingleChildScrollView(
          child: Container(
            height: Utilities.getSize(context).height,
            width: Utilities.getSize(context).width,
            color: Colors.white,
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Enter person details",
                  style: Utilities.fontStyle(28, FontWeight.w700, Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                InputField(label: "First name", controller: firstName),
                const SizedBox(
                  height: 20,
                ),
                InputField(label: "Last name", controller: lastName),
                const SizedBox(
                  height: 20,
                ),
                Text("Birth date",
                    style: Utilities.fontStyle(
                        15, FontWeight.w500, const Color(0xffA4A2A2))),
                InkWell(
                  onTap: () async {
                    try {
                      var selectedDate = "01/01/${(DateTime.now().year - 18)}";
                      dateOfBirth = await showCupertinoModalPopup(
                          context: context,
                          builder: (context) {
                            return CupertinoActionSheet(
                              title: Text("Select your date of birth",
                                  style: Utilities.fontStyle(
                                      15,
                                      FontWeight.w500,
                                      const Color(0xffA4A2A2))),
                              actions: [
                                SizedBox(
                                  height: 180,
                                  child: CupertinoDatePicker(
                                    initialDateTime:
                                        DateTime((DateTime.now().year - 18)),
                                    onDateTimeChanged: (date) {
                                      var day = date.day < 10
                                          ? "0" + date.day.toString()
                                          : date.day.toString();
                                      var month = date.month < 10
                                          ? "0" + date.month.toString()
                                          : date.month.toString();
                                      selectedDate = "$day/$month/${date.year}";
                                    },
                                    mode: CupertinoDatePickerMode.date,
                                  ),
                                )
                              ],
                              cancelButton: CupertinoActionSheetAction(
                                onPressed: () {
                                  Navigator.pop(context, selectedDate);
                                },
                                child: const Text("Select"),
                              ),
                            );
                          });
                      setState(() {});
                    } catch (ex) {
                      print(ex);
                    }
                  },
                  child: Container(
                    width: Utilities.getSize(context).width,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.black.withOpacity(0.2)))),
                    child: Text(
                      dateOfBirth,
                      style: Utilities.fontStyle(
                          17, FontWeight.w600, Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InputField(label: "Occupation", controller: ocupation),
                const SizedBox(
                  height: 20,
                ),
                Text("Mobile number",
                    style: Utilities.fontStyle(
                        15, FontWeight.w500, const Color(0xffA4A2A2))),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Colors.black.withOpacity(0.2)))),
                      child: Text(
                        "+${widget.country['code']}",
                        style: Utilities.fontStyle(
                            17, FontWeight.w600, Colors.black),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: PhoneInputField(label: "", controller: mobile)),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text("Address",
                    style: Utilities.fontStyle(
                        15, FontWeight.w700, const Color(0xffA4A2A2))),
                const SizedBox(
                  height: 10,
                ),
                Text("City",
                    style: Utilities.fontStyle(
                        15, FontWeight.w700, const Color(0xffA4A2A2))),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: Utilities.getSize(context).width,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.black.withOpacity(0.2)))),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            city,
                            style: Utilities.fontStyle(
                                17, FontWeight.w600, Colors.black),
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Color(0xffA4A2A2),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InputField(label: "Zip code", controller: zipCode),
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupSuccess()));
                  },
                  child: Container(
                    width: Utilities.getSize(context).width,
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                        color: Constants.primaryColor,
                        borderRadius: BorderRadius.circular(6)),
                    child: Text(
                      "Create profile",
                      textAlign: TextAlign.center,
                      style: Utilities.fontStyle(
                          16, FontWeight.bold, Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
