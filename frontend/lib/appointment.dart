import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

class Appointment extends StatelessWidget {
  final String date;
  final String doctor;
  final String reason;
  final String patient;
  final String location;

  const Appointment(
      this.date, this.doctor, this.reason, this.patient, this.location);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: MyColors.lightGrey,
          borderRadius: const BorderRadius.all(Radius.circular(7.0)),
          border: Border.all(color: Colors.black)),
      child: Column(
        //First row is for icon/information, next is for both buttons
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.calendar_today_outlined, size: 50),
              Container(width: 20),
              Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: AutoSizeText(
                        date,
                        maxLines: 1,
                        textAlign: TextAlign.left,
                      )),
                  AutoSizeText(
                    doctor,
                    maxLines: 1,
                    textAlign: TextAlign.left,
                  ),
                  AutoSizeText(
                    reason,
                    maxLines: 1,
                    textAlign: TextAlign.left,
                  ),
                  AutoSizeText(
                    patient,
                    maxLines: 1,
                    textAlign: TextAlign.left,
                  ),
                  AutoSizeText(
                    location,
                    maxLines: 1,
                    textAlign: TextAlign.left,
                  ),
                ],
              )
            ],
          ),
          Container(height: 20),
          Row(
            children: [
              Spacer(),
              SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width * .3,
                child: ElevatedButton(
                    onPressed: (() => print("")),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(MyColors.blue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                            side: const BorderSide(
                                color: Color.fromARGB(0, 255, 255, 255))),
                      ),
                    ),
                    child: AutoSizeText(
                      "Reschedule",
                      maxLines: 1,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              ),
              const Spacer(),
              SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width * .3,
                child: ElevatedButton(
                    onPressed: (() => print("")),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(MyColors.blue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                            side: const BorderSide(
                                color: Color.fromARGB(0, 255, 255, 255))),
                      ),
                    ),
                    child: const Text(
                      "Cancel",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              ),
              Spacer()
            ],
          )
        ],
      ),
    );
  }
}
