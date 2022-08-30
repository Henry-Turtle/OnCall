import 'package:flutter/material.dart';
import 'colors.dart';

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
              height: 50,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5))),
              child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 7,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: MyColors.grey),
                    width: MediaQuery.of(context).size.width * .2,
                  ))),
          const Divider(
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
                return TextButton(
                    onPressed: (() {
                      Navigator.pop(context);
                    }),
                    child: Column(children: [
                      Container(height: 10),
                      ListTile(
                        leading:
                            const Image(image: AssetImage('ToothIcon.png')),
                        title: Text(
                          names[index],
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        trailing: const Icon(
                          Icons.check_circle,
                          color: MyColors.checkCircle,
                        ),
                      ),
                      Container(height: 10)
                    ]));
              } else {
                return TextButton(
                    onPressed: (() {
                      changer(names[i]);
                      Navigator.pop(context);
                    }),
                    child: Column(children: [
                      Container(height: 10),
                      ListTile(
                        leading: const Image(
                          image: AssetImage('ToothIcon.png'),
                        ),
                        title: Text(names[index],
                            style:
                                TextStyle(color: Colors.white, fontSize: 25)),
                        trailing: const Icon(Icons.circle_outlined,
                            color: MyColors.checkCircle),
                      ),
                      Container(
                        height: 10,
                      )
                    ]));
              }
            },
          ))
        ],
      ),
    );
  }
}
