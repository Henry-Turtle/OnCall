// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        color: Color(0xFF2D8EC4),
        child: Row(
          children: [
            Spacer(),
            BottomButton(Icons.messenger_outline_sharp, "Message"),
            Spacer(),
            BottomButton(Icons.home_outlined, "Home"),
            Spacer(),
            BottomButton(Icons.attach_money_outlined, "Billing"),
            Spacer()
          ],
        ));
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
            Spacer(),
            Icon(buttonIcon, color: Colors.white, size: 50),
            Text(buttonLabel,
                style: TextStyle(color: Colors.white, fontSize: 15)),
            Spacer()
          ],
        ));
  }
}
