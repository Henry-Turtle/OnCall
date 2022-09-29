import 'package:flutter/material.dart';

class SignupTopBar extends StatelessWidget {
  final goto;

  SignupTopBar(this.goto);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF004387),
      height: 90,
      child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 18.0),
          child: IconButton(
            icon: Icon(Icons.keyboard_arrow_left_sharp,
                color: Colors.white, size: 45),
            onPressed: goto,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 18.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 80,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
