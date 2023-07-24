import 'package:flutter/material.dart';

import 'package:frontend/home_bottom_bar.dart';
import 'package:frontend/homepage/home_top_bar.dart';
import 'package:frontend/homepage/home_buttons.dart';
import 'package:frontend/homepage/appointment.dart';

//TODO: Make OnCall logo its own layer, so other elements can overlap with it

class Tester extends StatelessWidget {
  const Tester({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeTopBar("Henry White"),
          const Padding(
              padding: EdgeInsets.all(16),
              child: Appointment("Feb 12 2006", "Dr. Udall", "Urethral Cancer",
                  "Nick the Foolish", "The Moon")),
          const Spacer(),
          const Padding(
              padding: EdgeInsets.only(bottom: 16.0), child: HomeButtons()),
          Container(height: 4),
          HomeBottomBar(2),
        ],
      ),
    );
  }
}
