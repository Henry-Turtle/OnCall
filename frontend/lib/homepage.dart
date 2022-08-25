// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frontend/appointment_view.dart';

import 'home_top_bar.dart';
import 'home_bottom_bar.dart';
import 'home_buttons.dart';
import 'appointment_view.dart';
import 'appointment.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "OnCall",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            children: [
              HomeTopBar("George White"),
              Expanded(
                  child: AppointmentView(const [
                Appointment("Feb 12 2006", "Dr. Udall", "Pancreatic Cancer",
                    "Niccolo the Foolish", "The Moon"),
                Appointment("Feb 12 2006", "Dr. Udall", "Pancreatic Cancer",
                    "Niccolo the Foolish", "The Moon"),
                Appointment("Feb 12 2006", "Dr. Udall", "Pancreatic Cancer",
                    "Niccolo the Foolish", "The Moon"),
                Appointment("Feb 12 2006", "Dr. Udall", "Pancreatic Cancer",
                    "Niccolo the Foolish", "The Moon"),
                Appointment("Feb 12 2006", "Dr. Udall", "Pancreatic Cancer",
                    "Niccolo the Foolish", "The Moon")
              ])),
              Padding(padding: EdgeInsets.all(16), child: HomeButtons()),
              Container(height: 4),
            ],
          ),
          bottomNavigationBar: HomeBottomBar(),
        ));
  }
}
