// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:OnCall/messaging/message_page.dart';
import 'homepage/home_page.dart';

//TODO:
//REMOVE PAINT EFFECTS FROM BUTTONS

class HomeBottomBar extends StatelessWidget {
  final selected;
  const HomeBottomBar(this.selected);

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
                BottomButton("assets/icons/feather/message-circle.svg",
                    "Messages", 1 == selected, () {
                  var offset =
                      (selected < 1) ? Offset(1.0, 0.0) : Offset(-1.0, 0.0);
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 200),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            MessagePage(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          var begin = offset;
                          const end = Offset.zero;
                          final tween = Tween(begin: begin, end: end);
                          final offsetAnimation = animation.drive(tween);
                          return SlideTransition(
                            position: offsetAnimation,
                            child: child,
                          );
                        },
                      ));
                }),
                Spacer(),
                BottomButton(
                  "assets/icons/feather/home.svg",
                  "Home",
                  2 == selected,
                  () {
                    var offset =
                        (selected < 2) ? Offset(1.0, 0.0) : Offset(-1.0, 0.0);
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: Duration(milliseconds: 200),
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  HomePage(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            var begin = offset;
                            const end = Offset.zero;
                            final tween = Tween(begin: begin, end: end);
                            final offsetAnimation = animation.drive(tween);
                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                        ));
                  },
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
          onPressed: selected ? () => print("") : callback,
          child: Column(
            children: [
              Spacer(
                flex: 2,
              ),
              Container(
                child: SvgPicture.asset(
                  buttonIcon,
                  color: selected ? Colors.black : Color(0xFFC3C3C7),
                  height: MediaQuery.of(context).size.height * .05,
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
