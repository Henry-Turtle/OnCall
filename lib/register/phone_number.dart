import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:OnCall/register/signup_top_bar.dart';
import 'package:OnCall/register/sms.dart';
import 'package:OnCall/register/splash_screen.dart';

import '../colors.dart';

//TODO: Make it so the inputbox automatically adds and removes hyphens as number is typed
//TODO: Remove paint effect from "I already have an account"

class PhoneNumber extends StatefulWidget {
  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final phoneNumber = TextEditingController();

  final focus = FocusNode();
  var text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: MyColors.background,
        child: Column(children: [
          SignupTopBar(
            () => Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const SplashScreen(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    const begin = Offset(-1.0, 0.0);
                    const end = Offset.zero;
                    final tween = Tween(begin: begin, end: end);
                    final offsetAnimation = animation.drive(tween);
                    return SlideTransition(
                      position: offsetAnimation,
                      child: child,
                    );
                  },
                )),
          ),
          Container(height: 50),
          SizedBox(
            //Enter phone number caption
            width: MediaQuery.of(context).size.width * .9,
            child: const Text(
              "Enter your phone number to sign up",
              style: TextStyle(fontSize: 27, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          //
          //
          Container(height: 30),
          //
          //
          Container(
            width: MediaQuery.of(context).size.width * .9,
            height: 55,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: RawKeyboardListener(
                  focusNode: focus,
                  onKey: (event) {
                    if (event is RawKeyDownEvent) {
                      return;
                    }

                    var value = phoneNumber.text;

                    if (value.length == 3 || value.length == 7) {
                      if (text.length == 4 || text.length == 8) {
                        phoneNumber.value = TextEditingValue(
                          text: value.substring(0, value.length - 1),
                          selection: TextSelection.fromPosition(
                            TextPosition(offset: value.length - 1),
                          ),
                        );
                        text = value.substring(0, value.length);
                        return;
                      }

                      phoneNumber.value = TextEditingValue(
                        text: phoneNumber.text + "-",
                        selection: TextSelection.fromPosition(
                          TextPosition(offset: phoneNumber.text.length + 1),
                        ),
                      );
                      text = phoneNumber.text;
                    }
                    text = phoneNumber.text;
                  },
                  child: TextField(
                    maxLength: 12,
                    controller: phoneNumber,
                    style: const TextStyle(fontSize: 25),
                    cursorColor: Colors.black,
                    cursorHeight: 30,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp("[0-9-]"))
                    ],
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        counterText: ""),
                  ),
                ),
              ),
            ),
          ),
          //
          //
          Container(
            height: 20,
          ),
          //
          //
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * .9,
              height: 60,
              decoration:
                  const BoxDecoration(color: MyColors.lightBlue, boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, .3),
                  offset: Offset(0, 3),
                  blurRadius: 2,
                )
              ]),
              child: TextButton(
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  if (phoneNumber.text.length == 12) {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: const Duration(milliseconds: 200),
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  SMS(phoneNumber.text),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            const begin = Offset(1.0, 0.0);
                            const end = Offset.zero;
                            final tween = Tween(begin: begin, end: end);
                            final offsetAnimation = animation.drive(tween);
                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                        ));
                  }
                },
              ),
            ),
          ),
          //
          //
          Container(height: 20),
          //
          //
          Center(
            child: TextButton(
                child: const Text(
                  "I already have an account",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: MyColors.alreadyHaveAccount,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () => print("")),
          )
        ]),
      ),
    );
  }
}
