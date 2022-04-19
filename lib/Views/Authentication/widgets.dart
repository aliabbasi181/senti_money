import 'package:flutter/material.dart';
import 'package:senti/utilities.dart';

class InputField extends StatefulWidget {
  String label;
  TextEditingController controller;
  InputField({Key? key, required this.label, required this.controller})
      : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Colors.black.withOpacity(0.2)))),
      child: TextField(
        controller: widget.controller,
        cursorColor: Colors.black,
        style: Utilities.fontStyle(17, FontWeight.w700, Colors.black),
        decoration: InputDecoration(
            isCollapsed: true,
            border: const OutlineInputBorder(borderSide: BorderSide.none),
            labelText: widget.label,
            contentPadding: const EdgeInsets.only(top: 10, bottom: 10),
            labelStyle: Utilities.fontStyle(
                15, FontWeight.w500, const Color(0xffA4A2A2))),
      ),
    );
  }
}

class PhoneInputField extends StatefulWidget {
  String label;
  TextEditingController controller;
  PhoneInputField({Key? key, required this.label, required this.controller})
      : super(key: key);

  @override
  State<PhoneInputField> createState() => _PhoneInputFieldState();
}

class _PhoneInputFieldState extends State<PhoneInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Colors.black.withOpacity(0.2)))),
      child: TextField(
        controller: widget.controller,
        cursorColor: Colors.black,
        style: Utilities.fontStyle(17, FontWeight.w700, Colors.black),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            isCollapsed: true,
            border: const OutlineInputBorder(borderSide: BorderSide.none),
            labelText: widget.label,
            contentPadding: const EdgeInsets.only(top: 10, bottom: 10),
            labelStyle: Utilities.fontStyle(
                15, FontWeight.w500, const Color(0xffA4A2A2))),
      ),
    );
  }
}

class EmailInputField extends StatefulWidget {
  String label;
  TextEditingController controller;
  EmailInputField({Key? key, required this.label, required this.controller})
      : super(key: key);

  @override
  State<EmailInputField> createState() => _EmailInputFieldState();
}

class _EmailInputFieldState extends State<EmailInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Colors.black.withOpacity(0.2)))),
      child: TextField(
        controller: widget.controller,
        cursorColor: Colors.black,
        style: Utilities.fontStyle(17, FontWeight.w700, Colors.black),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            isCollapsed: true,
            border: const OutlineInputBorder(borderSide: BorderSide.none),
            labelText: widget.label,
            contentPadding: const EdgeInsets.only(top: 10, bottom: 10),
            labelStyle: Utilities.fontStyle(
                15, FontWeight.w500, const Color(0xffA4A2A2))),
      ),
    );
  }
}
