import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bottom_popup.dart';
import '../colors.dart';

class HomeTopBar extends StatefulWidget {
  var name;

  changeName(newName) {
    print(name);
  }

  HomeTopBar(this.name);

  @override
  State<HomeTopBar> createState() => _HomeTopBarState();
}

class _HomeTopBarState extends State<HomeTopBar> {
  var selectedName;
  var patients = [
    "Henry White",
    "Niccolo Escobar",
    "George White",
    'Scarlett White',
    'Brother of Niccolo',
    'Mother of Niccolo',
    'Molly Moon White',
    'Niccolo Puppy',
    'Brandom White',
    'Tom Cruize'
  ];

  var displayPatients;

  sortPatients(names, String name) {
    var newNames = [...names];
    newNames.remove(name);
    newNames.insert(0, name);
    return newNames;
  }

  @override
  void initState() {
    selectedName = widget.name;
    displayPatients = sortPatients(patients, selectedName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.darkBlue,
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Row(children: [
        Container(width: 10),
        Padding(
            padding: const EdgeInsets.only(bottom: 7.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                child: TextButton(
                    onPressed: (() => showModalBottomSheet(
                          //enableDrag: false,

                          context: context,

                          backgroundColor: Colors.transparent,
                          isScrollControlled: true,
                          builder: ((context) {
                            return BottomPopup(displayPatients, 0,
                                ((String name) {
                              setState(() {
                                displayPatients = sortPatients(patients, name);
                                selectedName = name;
                              });
                            }));
                          }),
                        )),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          //TODO: Make it so that it text is too large, it will ellipsis

                          child: Text(
                            selectedName,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        )
                      ],
                    )),
              ),
            )),
        Spacer(),
        Align(
            alignment: Alignment.topLeft,
            child: IconButton(
                onPressed: (() => print("")),
                icon: const Icon(Icons.notifications_none,
                    color: Colors.white, size: 40))),
        Container(width: 20)
      ]),
    );
  }
}
