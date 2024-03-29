import 'package:flutter/material.dart';
import '../colors.dart';
import 'package:auto_size_text/auto_size_text.dart';

class BottomPopup extends StatelessWidget {
  final names;
  final selected;
  final changer;

  const BottomPopup(this.names, this.selected, this.changer);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .7,
      decoration: const BoxDecoration(
          color: MyColors.darkGrey,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0))),
      child: Column(
        children: [
          Container(
              //Top dragbar
              height: 50,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5))),
              child: Align(
                  //Top dragbar pane
                  alignment: Alignment.center,
                  child: Container(
                    height: 7,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: MyColors.grey),
                    width: MediaQuery.of(context).size.width * .2,
                  ))),
          const Divider(
            //Divider
            color: MyColors.grey,
            thickness: 2,
            height: 2,
          ),
          Container(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, i) {
                var index = i;

                if (index == selected) {
                  return Container(
                    height: 70,
                    child: TextButton(
                        onPressed: (() {
                          Navigator.pop(context);
                        }),
                        child: Column(children: [
                          Container(height: 10),
                          Expanded(
                            child: ListTile(
                              leading: const Image(
                                  image: AssetImage(
                                      'assets/images/ToothIcon.jpg')),
                              title: Text(
                                names[index],
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              trailing: const Icon(
                                Icons.check_circle,
                                color: MyColors.checkCircle,
                              ),
                            ),
                          ),
                          Container(height: 10)
                        ])),
                  );
                } else {
                  return Container(
                    height: 70,
                    child: TextButton(
                        onPressed: (() {
                          changer(names[i]);
                          Navigator.pop(context);
                        }),
                        child: Column(children: [
                          Container(height: 10),
                          Expanded(
                            child: ListTile(
                              leading: const Image(
                                image:
                                    AssetImage('assets/images/ToothIcon.jpg'),
                              ),
                              title: Text(names[index],
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                              trailing: const Icon(Icons.circle_outlined,
                                  color: MyColors.checkCircle),
                            ),
                          ),
                          Container(
                            height: 10,
                          )
                        ])),
                  );
                }
              },
            ),
          ),
          TextButton(
            onPressed: () => print(""),
            child: Column(children: [
              Container(
                  height: 40,
                  width: double.infinity,
                  padding: EdgeInsets.all(7),
                  child: Center(
                    child: Text("Add Family Member",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ))
            ]),
          ),
          TextButton(
            onPressed: () => print(""),
            child: Column(children: [
              Container(
                  height: 40,
                  width: double.infinity,
                  padding: EdgeInsets.all(7),
                  child: Center(
                    child: Text("New Practice",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ))
            ]),
          ),
          TextButton(
            onPressed: () => print(""),
            child: Column(children: [
              Container(
                  height: 40,
                  width: double.infinity,
                  padding: EdgeInsets.all(7),
                  child: Center(
                    child: Text("Sign Out",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.red)),
                  ))
            ]),
          )
        ],
      ),
    );
  }
}
