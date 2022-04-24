import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senti/Views/Authentication/choose_account.dart';
import 'package:senti/Views/Authentication/signup.dart';
import 'package:senti/constants.dart';
import 'package:senti/utilities.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdc9a07),
      body: Container(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: Utilities.getSize(context).width,
                height: Utilities.getSize(context).height * 0.38,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image/login_banner.png"))),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                  margin: EdgeInsets.only(
                      top: Utilities.getSize(context).height * 0.35),
                  padding: const EdgeInsets.only(top: 31, left: 19, right: 19),
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
                      Text(
                        "Login",
                        style: Utilities.fontStyle(
                            24, FontWeight.w700, Colors.black),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.black.withOpacity(0.2)))),
                        child: TextField(
                          cursorColor: Colors.black,
                          style: Utilities.fontStyle(
                              17, FontWeight.w700, Colors.black),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              isCollapsed: true,
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              labelText: "Email address",
                              contentPadding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              labelStyle: Utilities.fontStyle(15,
                                  FontWeight.w500, const Color(0xffA4A2A2))),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.black.withOpacity(0.2)))),
                        child: TextField(
                            cursorColor: Colors.black,
                            scrollPadding: const EdgeInsets.all(0),
                            style: Utilities.fontStyle(
                                17, FontWeight.w700, Colors.black),
                            autocorrect: false,
                            obscuringCharacter: '●',
                            obscureText: _hidePassword,
                            decoration: InputDecoration(
                                isCollapsed: true,
                                contentPadding:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                labelText: "Password",
                                labelStyle: Utilities.fontStyle(
                                  15,
                                  FontWeight.w500,
                                  const Color(0xffA4A2A2),
                                ),
                                suffix: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _hidePassword = !_hidePassword;
                                    });
                                  },
                                  child: const Image(
                                    height: 20,
                                    width: 20,
                                    image: AssetImage(
                                        "assets/image/password_hide_icon.png"),
                                  ),
                                ))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Forgot  password?",
                        textAlign: TextAlign.center,
                        style: Utilities.fontStyle(
                            14, FontWeight.w600, Constants.primaryColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () async {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                chooseAccountDialog(
                              context,
                            ),
                          );
                        },
                        child: Container(
                          width: Utilities.getSize(context).width,
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                              color: Constants.primaryColor,
                              borderRadius: BorderRadius.circular(6)),
                          child: Text(
                            "Login",
                            textAlign: TextAlign.center,
                            style: Utilities.fontStyle(
                                16, FontWeight.bold, Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: Utilities.getSize(context).width,
                        padding: const EdgeInsets.fromLTRB(30, 14, 30, 14),
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xffDBDBDB)),
                            borderRadius: BorderRadius.circular(6)),
                        child: Stack(
                          alignment: AlignmentDirectional.centerStart,
                          children: [
                            Image.asset(
                              "assets/image/google_iocn.png",
                              height: 20,
                              width: 20,
                            ),
                            Center(
                              child: Text("Login with Google",
                                  textAlign: TextAlign.center,
                                  style: Utilities.fontStyle(
                                      16, FontWeight.bold, Colors.black)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "New to Senti?",
                              style: Utilities.fontStyle(
                                  14, FontWeight.w400, const Color(0xffA4A2A2)),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Signup()));
                                },
                                child: Text("Sign up",
                                    style: Utilities.fontStyle(
                                        14,
                                        FontWeight.w600,
                                        Constants.primaryColor)))
                          ],
                        ),
                      ),
                      Text(
                        "By clicking “Login” you agree to Senti’s Terms of service and privacy policy",
                        textAlign: TextAlign.center,
                        style: Utilities.fontStyle(
                            14, FontWeight.w300, const Color(0xffA4A2A2)),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
