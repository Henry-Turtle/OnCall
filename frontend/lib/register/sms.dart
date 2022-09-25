import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frontend/colors.dart';
import 'package:frontend/homepage/home_page.dart';
import 'package:frontend/register/phone_number.dart';
import 'package:frontend/register/signup_top_bar.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class SMS extends StatelessWidget {
  final phoneNumber;

  SMS(this.phoneNumber);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      SignupTopBar(() => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PhoneNumber(),
          ))),
      //
      //
      Container(height: 40),
      //
      //
      Container(
        width: MediaQuery.of(context).size.width * .8,
        child: Text(
          "Type the security code we just texted to you at " + phoneNumber,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, color: MyColors.darkInput),
        ),
      ),
      //
      //
      Container(height: 40),
      //
      //
      Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: PinCodeTextField(
          appContext: context,
          length: 6,
          autoFocus: true,
          animationType: AnimationType.slide,
          pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              inactiveColor: MyColors.harshInputBorder,
              activeColor: MyColors.harshInputBorder,
              fieldHeight: 50,
              borderWidth: 2,
              fieldWidth: MediaQuery.of(context).size.width * .1),
          onChanged: (value) => print(""),
          onCompleted: (value) => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              )),
        ),
      ),
      //
      //
      Container(height: 50),
      //
      //
      Center(
        child: Container(
          width: MediaQuery.of(context).size.width * .9,
          height: 60,
          color: MyColors.lightBlue,
          child: TextButton(
            child: Text(
              "Resend Code",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              print("");
            },
          ),
        ),
      ),
    ]));
  }
}
