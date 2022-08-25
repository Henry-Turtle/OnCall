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
          Align(
              alignment: Alignment.topCenter,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.calendar_today_outlined, size: 50),
                  Container(width: 20),
                  Text(
                    '$date\n$doctor\nReason: $reason\nPatient: $patient\nLocation: $location',
                    style: const TextStyle(fontSize: 20),
                  )
                ],
              )),
          Container(height: 20),
          Row(
            children: [
              SizedBox(
                height: 40,
                width: 170,
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
                      "Reschedule",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              ),
              const Spacer(),
              SizedBox(
                height: 40,
                width: 170,
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
              )
            ],
          )
        ],
      ),
    );
  }
}
