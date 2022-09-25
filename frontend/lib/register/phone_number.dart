import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frontend/register/signup_top_bar.dart';
import 'package:frontend/register/sms.dart';
import 'package:frontend/register/splash_screen.dart';

import '../colors.dart';

//TODO: Make it so the inputbox automatically adds and removes hyphens as number is typed
//TODO: Remove paint effect from "I already have an account"

class PhoneNumber extends StatelessWidget {
  final phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: MyColors.background,
        child: Column(children: [
          SignupTopBar(() => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SplashScreen(),
              ))),
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
                padding: EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  controller: phoneNumber,
                  style: TextStyle(fontSize: 25),
                  cursorColor: Colors.black,
                  cursorHeight: 30,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp("[0-9-]"))
                  ],
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.white,
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
              color: MyColors.lightBlue,
              child: TextButton(
                child: Text(
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
                        MaterialPageRoute(
                          builder: (context) => new SMS(phoneNumber.text),
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
                child: Text(
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
