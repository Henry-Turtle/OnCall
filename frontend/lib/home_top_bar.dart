import 'package:flutter/material.dart';

class HomeTopBar extends StatefulWidget {
  var name;

  HomeTopBar(this.name);

  @override
  State<HomeTopBar> createState() => _HomeTopBarState();
}

class _HomeTopBarState extends State<HomeTopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF3BB9FF),
      height: 60,
      width: double.infinity,
      child: Row(children: [
        Container(width: 20),
        Text(widget.name, style: TextStyle(color: Colors.white, fontSize: 25)),
        IconButton(
          icon: Icon(Icons.keyboard_arrow_down, color: Colors.white),
          onPressed: () {
            if (widget.name == "George White") {
              setState(() => widget.name = "Henry White");
            } else {
              setState(
                () => widget.name = "George White",
              );
            }
          },
        ),
        Spacer(),
        Align(
            alignment: Alignment.topLeft,
            child: IconButton(
                onPressed: (() => print("")),
                icon: Icon(Icons.notifications_none,
                    color: Colors.white, size: 40))),
        Container(width: 30)
      ]),
    );
  }
}
