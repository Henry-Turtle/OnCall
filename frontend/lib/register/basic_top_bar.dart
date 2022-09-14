import 'package:flutter/material.dart';
import 'package:frontend/colors.dart';
import 'package:auto_size_text/auto_size_text.dart';

class BasicTopBar extends StatelessWidget {
  const BasicTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      color: MyColors.darkBlue,
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
        child: Row(children: [
          const Spacer(),
          Image(
            image: const AssetImage(
              'basictopbar.png',
            ),
            height: MediaQuery.of(context).size.width * .1,
          ),
          Container(
            width: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width * .5,
            child: const FittedBox(
              fit: BoxFit.contain,
              alignment: Alignment.centerLeft,
              child: Text(
                "OnCall.Dentist",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Spacer()
        ]),
      ),
    );
  }
}
