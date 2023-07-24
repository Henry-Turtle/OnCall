import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:frontend/colors.dart';
import 'package:frontend/homepage/home_page.dart';
import 'package:frontend/register/signup_top_bar.dart';
import 'phone_number.dart';

//TODO: Change the TextButton on "sex" property so that it no longer elevates with shadow when pressed

class InformationForm extends StatefulWidget {
  const InformationForm({super.key});

  @override
  State<InformationForm> createState() => _InformationFormState();
}

class _InformationFormState extends State<InformationForm> {
  var sexSelected = 0;
  var termsChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SignupTopBar(() => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PhoneNumber(),
            ))),
        Padding(
          padding:
              const EdgeInsets.only(top: 20, right: 10, bottom: 0, left: 10),
          child: Column(
            children: [
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "Name",
                      style: TextStyle(color: MyColors.darkInput, fontSize: 16),
                    ),
                  )),
              //
              //
              Container(height: 5),
              //
              /*
                *Name entry
                */
              //
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        height: 50,
                        width: (MediaQuery.of(context).size.width * .5) - 10,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: MyColors.informationInputBorder),
                            color: Colors.white),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: TextField(
                              textAlign: TextAlign.left,
                              textAlignVertical: TextAlignVertical.center,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                        )),
                  ),
                  //
                  //
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        height: 50,
                        width: (MediaQuery.of(context).size.width * .5) - 10,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: MyColors.informationInputBorder),
                            color: Colors.white),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: TextField(
                              textAlign: TextAlign.left,
                              textAlignVertical: TextAlignVertical.center,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
              //
              //
              Container(height: 30),
              //
              //*Date of Birth entry
              //
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "Date of Birth",
                      style: TextStyle(color: MyColors.darkInput, fontSize: 16),
                    ),
                  )),
              Row(
                children: [
                  //*Day
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        height: 50,
                        width: (MediaQuery.of(context).size.width - 20) / 3,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: MyColors.informationInputBorder),
                            color: Colors.white),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: TextField(
                              textAlign: TextAlign.left,
                              textAlignVertical: TextAlignVertical.center,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                        )),
                  ),
                  //*Month
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        height: 50,
                        width: (MediaQuery.of(context).size.width - 20) / 3,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: MyColors.informationInputBorder),
                            color: Colors.white),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: TextField(
                              textAlign: TextAlign.left,
                              textAlignVertical: TextAlignVertical.center,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                        )),
                  ),
                  //*Year
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        height: 50,
                        width: (MediaQuery.of(context).size.width - 20) / 3,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: MyColors.informationInputBorder),
                            color: Colors.white),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: TextField(
                              textAlign: TextAlign.left,
                              textAlignVertical: TextAlignVertical.center,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
              //
              //
              Container(height: 30),
              //
              //*Sex entry
              //
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "Sex",
                      style: TextStyle(color: MyColors.darkInput, fontSize: 16),
                    ),
                  )),
              Row(
                children: [
                  //*Male == 1
                  Container(
                    width: (MediaQuery.of(context).size.width - 20) / 2,
                    height: 50,
                    decoration: BoxDecoration(
                        color: (sexSelected == 1)
                            ? MyColors.darkInput
                            : Colors.white,
                        border: Border.all(
                            width: 1, color: MyColors.informationInputBorder)),
                    child: TextButton(
                      style: TextButton.styleFrom(elevation: 0),
                      child: Text(
                        "Male",
                        style: TextStyle(
                            color: (sexSelected == 1)
                                ? Colors.white
                                : Colors.black,
                            fontSize: 25),
                      ),
                      onPressed: () {
                        setState(
                            () => sexSelected = (sexSelected != 1) ? 1 : 0);
                      },
                    ),
                  ),
                  //*Female == 2
                  Container(
                    width: (MediaQuery.of(context).size.width - 20) / 2,
                    height: 50,
                    decoration: BoxDecoration(
                        color: (sexSelected == 2)
                            ? MyColors.darkInput
                            : Colors.white,
                        border: Border.all(
                            width: 1, color: MyColors.informationInputBorder)),
                    child: TextButton(
                      style: TextButton.styleFrom(elevation: 0),
                      child: Text(
                        "Female",
                        style: TextStyle(
                            color: (sexSelected == 2)
                                ? Colors.white
                                : Colors.black,
                            fontSize: 25),
                      ),
                      onPressed: () {
                        setState(
                            () => sexSelected = (sexSelected != 2) ? 2 : 0);
                      },
                    ),
                  ),
                ],
              ),
              //
              //
              Container(
                height: 20,
              ),
              //
              //*Terms and Conditions
              //
              Row(
                children: [
                  //*Checkbox
                  Transform.scale(
                    scale: 1.3,
                    child: Checkbox(
                      value: termsChecked,
                      fillColor: MaterialStateProperty.all(MyColors.darkInput),
                      onChanged: (value) =>
                          setState(() => termsChecked = !termsChecked),
                    ),
                  ),
                  //*Terms and Privacy Policy Text
                  Container(
                    child: RichText(
                        maxLines: 2,
                        textAlign: TextAlign.left,
                        text: const TextSpan(
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "I have read and accept OnCall's "),
                              TextSpan(
                                  text: "Terms of use ",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: MyColors.lightBlue)),
                              TextSpan(text: "and "),
                              TextSpan(
                                  text: "Privacy Policy",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: MyColors.lightBlue)),
                            ])),
                  )
                ],
              ),
              //
              //
              Container(height: 20),
              //
              //*Sign Up Box
              //
              Center(
                child: Container(
                  width: (MediaQuery.of(context).size.width - 20),
                  height: 60,
                  decoration: const BoxDecoration(
                      color: MyColors.lightBlue,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, .3),
                          offset: Offset(0, 3),
                          blurRadius: 2,
                        )
                      ]),
                  child: TextButton(
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    const HomePage(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              const begin = Offset(1.0, 0.0);
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
                ),
              ),
              Container(
                height: 5,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
