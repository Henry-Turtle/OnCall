import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'bottom_popup.dart';

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
      color: Color(0xFF3BB9FF),
      height: 60,
      width: double.infinity,
      child: Row(children: [
        Container(width: 10),
        Padding(
            padding: EdgeInsets.only(bottom: 7.0),
            child: TextButton(
                onPressed: (() => showModalBottomSheet(
                      //enableDrag: false,
                      context: context,
                      backgroundColor: Colors.transparent,
                      isScrollControlled: true,
                      builder: ((context) {
                        return BottomPopup(displayPatients, 0, ((String name) {
                          setState(() {
                            displayPatients = sortPatients(patients, name);
                            selectedName = name;
                          });
                        }));
                      }),
                    )),
                child: Row(children: [
                  Container(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Row(children: [
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: AutoSizeText(selectedName,
                                maxLines: 1,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ))),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            )),
                        Spacer()
                      ]))
                ]))),
        Spacer(),
        Align(
            alignment: Alignment.topLeft,
            child: IconButton(
                onPressed: (() => print("")),
                icon: Icon(Icons.notifications_none,
                    color: Colors.white, size: 40))),
        Container(width: 20)
      ]),
    );
  }
}
