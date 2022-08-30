// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomeButtons extends StatelessWidget {
  const HomeButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(0, 255, 255, 255),
        child: Row(children: [
          Container(width: MediaQuery.of(context).size.width * .0825),
          Container(
              //First Button
              width: MediaQuery.of(context).size.width * .33,
              height: MediaQuery.of(context).size.height * .1,
              child: ElevatedButton(
                  onPressed: (() => print("")),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(MyColors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                          side: BorderSide(
                              color: Color.fromARGB(0, 255, 255, 255))),
                    ),
                  ),
                  child: AutoSizeText(
                    "Talk to My Dentist",
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    wrapWords: false,
                    style: TextStyle(fontSize: 100),
                  ))),
          Container(width: MediaQuery.of(context).size.width * .165),
          Container(
              width: MediaQuery.of(context).size.width * .33,
              height: MediaQuery.of(context).size.height * .1,
              child: ElevatedButton(
                  onPressed: (() => print("")),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(MyColors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                          side: BorderSide(
                              color: Color.fromARGB(0, 255, 255, 255))),
                    ),
                  ),
                  child: AutoSizeText(
                    "Book Appointment",
                    maxLines: 2,
                    wrapWords: false,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 100),
                  ))),
          Container(width: MediaQuery.of(context).size.width * .0825),
        ]));
  }
}
