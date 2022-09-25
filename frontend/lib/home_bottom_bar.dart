// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/messaging/message_page.dart';
import 'homepage/home_page.dart';

//TODO:
//REMOVE PAINT EFFECTS FROM BUTTONS

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
                    0 == selected, () => print("")),
                Spacer(),
                BottomButton(
                    "assets/icons/feather/message-circle.svg",
                    "Messages",
                    1 == selected,
                    () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MessagePage(),
                        ))),
                Spacer(),
                BottomButton(
                  "assets/icons/feather/home.svg",
                  "Home",
                  2 == selected,
                  () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      )),
                ),
                Spacer(),
                BottomButton("assets/icons/feather/clock.svg", "Appointments",
                    3 == selected, () => print("")),
                Spacer(),
                BottomButton("assets/icons/feather/user.svg", "Account",
                    4 == selected, () => print("")),
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
  final callback;

  BottomButton(this.buttonIcon, this.buttonLabel, this.selected, this.callback);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: TextButton(
          onPressed: callback,
          child: Column(
            children: [
              Spacer(
                flex: 2,
              ),
              Container(
                height: 35,
                child: Container(
                  child: SvgPicture.asset(
                    buttonIcon,
                    color: selected ? Colors.black : Color(0xFFC3C3C7),
                    width: MediaQuery.of(context).size.width * .10,
                  ),
                ),
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
          )),
    );
  }
}
/*

              */
