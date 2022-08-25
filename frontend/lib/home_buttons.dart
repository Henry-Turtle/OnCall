// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'colors.dart';

class HomeButtons extends StatelessWidget {
  const HomeButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(width: 30),
      SizedBox(
          width: 160,
          height: 70,
          child: ElevatedButton(
              onPressed: (() => print("")),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(MyColors.blue),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      side:
                          BorderSide(color: Color.fromARGB(0, 255, 255, 255))),
                ),
              ),
              child: Column(children: [
                Spacer(),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Talk to My",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    )),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Dentist",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    )),
                Spacer()
              ]))),
      const Spacer(),
      SizedBox(
          width: 160,
          height: 70,
          child: ElevatedButton(
              onPressed: (() => print("")),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(MyColors.blue),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      side:
                          BorderSide(color: Color.fromARGB(0, 255, 255, 255))),
                ),
              ),
              child: Column(children: [
                Spacer(),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Book",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    )),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Appointment",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    )),
                Spacer()
              ]))),
      Container(width: 30)
    ]);
  }
}
