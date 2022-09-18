// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeBottomBar extends StatelessWidget {
  final selected;
  HomeBottomBar(this.selected);

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
                BottomButton("assets/icons/feather/dollar-sign.svg", "Billing",
                    0 == selected),
                Spacer(),
                BottomButton("assets/icons/feather/message-circle.svg",
                    "Messages", 1 == selected),
                Spacer(),
                BottomButton(
                    "assets/icons/feather/home.svg", "Home", 2 == selected),
                Spacer(),
                BottomButton("assets/icons/feather/clock.svg", "Appointments",
                    3 == selected),
                Spacer(),
                BottomButton(
                    "assets/icons/feather/user.svg", "Account", 4 == selected),
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
  final selected;

  BottomButton(this.buttonIcon, this.buttonLabel, this.selected);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (() => print("")),
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            SvgPicture.asset(
              buttonIcon,
              color: selected ? Colors.black : Color(0xFFC3C3C7),
              height: 35,
            ),
            Spacer(
              flex: 1,
            ),
            Text(buttonLabel,
                style: TextStyle(
                    color: selected ? Colors.black : Color(0xFFC3C3C7),
                    fontSize: 13)),
            Spacer(
              flex: 2,
            )
          ],
        ));
  }
}
