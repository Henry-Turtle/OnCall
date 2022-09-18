import 'package:flutter/material.dart';
import 'package:frontend/homepage/home_bottom_bar.dart';
import 'package:frontend/homepage/home_top_bar.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:frontend/colors.dart';
import 'package:intl/intl.dart';

class MessagePage extends StatefulWidget {
  MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  List<Message> messages = [
    Message(
        text: "Hello, World!",
        date: DateTime.now().subtract(const Duration(days: 3)),
        sentByMe: true),
    Message(text: "Hello, Back!", date: DateTime.now(), sentByMe: false),
    Message(text: "Hello, Back!", date: DateTime.now(), sentByMe: false),
    Message(text: "Hello, Back!", date: DateTime.now(), sentByMe: false),
    Message(text: "Hello, Back!", date: DateTime.now(), sentByMe: false),
    Message(text: "Hello, Back!", date: DateTime.now(), sentByMe: false),
    Message(text: "Hello, Back!", date: DateTime.now(), sentByMe: false),
    Message(text: "Hello, Back!", date: DateTime.now(), sentByMe: false),
    Message(text: "Hello, Back!", date: DateTime.now(), sentByMe: false),
    Message(text: "Hello, Back!", date: DateTime.now(), sentByMe: false),
    Message(text: "Hello, Back!", date: DateTime.now(), sentByMe: false),
    Message(text: "Hello, Back!", date: DateTime.now(), sentByMe: false),
    Message(text: "Hello, Back!", date: DateTime.now(), sentByMe: false),
    Message(text: "Respond to me!", date: DateTime.now(), sentByMe: false),
  ];

  FocusNode myFocusNode = FocusNode();
  final textField = TextEditingController();
  void clearText() => textField.clear();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeTopBar("George White"),
          Expanded(
              child: GroupedListView<Message, DateTime>(
                  reverse: true,
                  order: GroupedListOrder.DESC,
                  padding: const EdgeInsets.all(8),
                  elements: messages,
                  groupBy: (message) => DateTime(
                      message.date.year, message.date.month, message.date.day),
                  //
                  //
                  groupHeaderBuilder: (Message message) => SizedBox(
                        height: 40,
                        child: Center(
                            child: Card(
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  DateFormat.yMMMd().format(message.date))),
                        )),
                      ),
                  //
                  //
                  itemBuilder: (context, Message message) => Align(
                        alignment: message.sentByMe
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Card(
                            elevation: 8,
                            color: message.sentByMe
                                ? const Color(0xFF08cc46)
                                : MyColors.messageFill,
                            child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text(
                                  message.text,
                                  style: const TextStyle(color: Colors.white),
                                ))),
                      ))),
          //
          //

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
            child: Container(
                //Input field

                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: Row(
                  children: [
                    Container(width: 7),
                    SizedBox(
                      width: 30,
                      child: RawMaterialButton(
                        focusColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () => print(""),
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xFF004390),
                                    Color(0xFF0277FF)
                                  ])),
                          child: const Icon(Icons.camera_alt_outlined,
                              color: Colors.white, size: 20),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        focusNode: myFocusNode,
                        controller: textField,
                        textAlign: TextAlign.left,
                        cursorColor: Colors.black,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Type Here",
                            contentPadding: EdgeInsets.all(10)),
                        onSubmitted: (text) {
                          if (text != "") {
                            setState(() {
                              messages.add(Message(
                                  text: text,
                                  date: DateTime.now(),
                                  sentByMe: true));
                            });
                          }
                          clearText();
                          myFocusNode.requestFocus();
                        },
                      ),
                    ),
                    IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      icon: Icon(Icons.arrow_upward),
                      onPressed: () {
                        if (textField.text != "") {
                          setState(() {
                            messages.add(Message(
                                text: textField.text,
                                date: DateTime.now(),
                                sentByMe: true));
                          });
                        }
                        clearText();
                        myFocusNode.requestFocus();
                      },
                    ),
                    Container(
                      width: 5,
                    )
                  ],
                )),
          ),
          //
          //

          HomeBottomBar(1)
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final DateTime date;
  final bool sentByMe;

  const Message(
      {required this.text, required this.date, required this.sentByMe});
}
