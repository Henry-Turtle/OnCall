// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 2, color: Color(0xFFC3C3C7)),
        Container(
            height: 80,
            color: Colors.white,
            child: Row(
              children: [
                Spacer(),
                BottomButton(
                    SvgPicture.asset(
                      "assets/icons/feather/dollar-sign.svg",
                      color: Colors.black,
                      height: 35,
                    ),
                    "Billing"),
                BottomButton(
                    SvgPicture.asset(
                      "assets/icons/feather/message-circle.svg",
                      color: Colors.black,
                      height: 35,
                    ),
                    "Messages"),
                BottomButton(
                    SvgPicture.asset(
                      "assets/icons/feather/home.svg",
                      color: Colors.black,
                      height: 35,
                    ),
                    "Home"),
                BottomButton(
                    SvgPicture.asset(
                      "assets/icons/feather/clock.svg",
                      color: Colors.black,
                      height: 35,
                    ),
                    "Appointments"),
                BottomButton(
                    SvgPicture.asset(
                      "assets/icons/feather/user.svg",
                      color: Colors.black,
                      height: 35,
                    ),
                    "Account"),
                Spacer()
              ],
            )),
      ],
    );
  }
}

class BottomButton extends StatelessWidget {
  final buttonIcon;
  final buttonLabel;

  BottomButton(this.buttonIcon, this.buttonLabel);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (() => print("")),
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            buttonIcon,
            Spacer(
              flex: 1,
            ),
            Text(buttonLabel,
                style: TextStyle(color: Colors.black, fontSize: 13)),
            Spacer(
              flex: 2,
            )
          ],
        ));
  }
}
