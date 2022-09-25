import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../colors.dart';

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
                  SizedBox(
                    width: 200,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        "$date\n$doctor\n$reason\n$patient\n$location",
                        style: TextStyle(fontSize: 100),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(height: 20),
          Row(
            children: [
              Container(width: 15),
              SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width * .3,
                child: ElevatedButton(
                    onPressed: (() => print("")),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.only(
                          top: 5, bottom: 5, left: 10, right: 10),
                      backgroundColor: MyColors.appointmentField,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                    ),
                    child: FittedBox(
                      child: Text(
                        "Reschedule",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )),
              ),
              const Spacer(),
              SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width * .3,
                child: ElevatedButton(
                    onPressed: (() => print("")),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.only(
                          top: 5, bottom: 5, left: 10, right: 10),
                      backgroundColor: MyColors.appointmentField,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                    ),
                    child: FittedBox(
                      child: Text(
                        "Cancel",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )),
              ),
              Container(width: 15),
            ],
          )
        ],
      ),
    );
  }
}
