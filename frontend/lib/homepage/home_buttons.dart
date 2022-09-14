// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../colors.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomeButtons extends StatelessWidget {
  const HomeButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(0, 255, 255, 255),
        child: Row(children: [
          Spacer(),
          Container(
              //First Button
              width: MediaQuery.of(context).size.width * .4,
              height: 60,
              child: ElevatedButton(
                  onPressed: (() => print("")),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(
                        top: 10.0, bottom: 10, left: 15, right: 15),
                    foregroundColor: Colors.white,
                    backgroundColor: MyColors.darkBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                  ),
                  child: FittedBox(
                    child: Text(
                      "Talk to My \nDentist",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 100, color: Colors.white),
                    ),
                  ))),
          Spacer(),
          Container(
              width: MediaQuery.of(context).size.width * .4,
              height: 60,
              child: ElevatedButton(
                  onPressed: (() => print("")),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(
                        top: 10.0, bottom: 10, left: 15, right: 15),
                    backgroundColor: MyColors.darkBlue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                  ),
                  child: FittedBox(
                    child: Text(
                      "Book \nAppointment",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 100, color: Colors.white),
                    ),
                  ))),
          Spacer()
        ]));
  }
}
