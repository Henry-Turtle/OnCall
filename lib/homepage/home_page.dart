import 'package:flutter/material.dart';

import 'home_top_bar.dart';
import '../home_bottom_bar.dart';
import 'home_buttons.dart';
import 'appointment.dart';

//TODO: Make OnCall logo its own layer, so other elements can overlap with it

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeTopBar("George White"),
          const Padding(
              padding: EdgeInsets.all(16),
              child: Appointment("Feb 12 2006", "Dr. Udall", "Urethral Cancer",
                  "Nick the Foolish", "The Moon")),
          /*const Image(
            image: AssetImage('assets/images/blurry_logo.jpg'),
            height: 100,
          ),*/
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
