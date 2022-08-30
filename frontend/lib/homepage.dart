// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'home_top_bar.dart';
import 'home_bottom_bar.dart';
import 'home_buttons.dart';
import 'appointment.dart';
import 'family_members.dart';

//TODO: Make OnCall logo its own layer, so other elements can overlap with it

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "OnCall",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: FamilyMembers(),
          body: Column(
            children: [
              HomeTopBar("George White"),
              Padding(
                  padding: const EdgeInsets.all(16),
                  child: Appointment("Feb 12 2006", "Dr. Udall",
                      "Pancreatic Cancer", "Niccolo the Foolish", "The Moon")),
              Image(
                image: AssetImage('Logo.png'),
                height: 100,
              ),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(bottom: 16.0), child: HomeButtons()),
              Container(height: 4),
            ],
          ),
          bottomNavigationBar: HomeBottomBar(),
        ));
  }
}
