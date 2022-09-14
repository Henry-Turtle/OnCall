import 'package:flutter/material.dart';
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
        date: DateTime.now().subtract(Duration(days: 3)),
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
                  itemBuilder: (context, Message message) => Align(
                        alignment: message.sentByMe
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Card(
                            elevation: 8,
                            color: message.sentByMe
                                ? Color(0xFF08cc46)
                                : MyColors.messageFill,
                            child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text(
                                  message.text,
                                  style: TextStyle(color: Colors.white),
                                ))),
                      ))),
          Container(
              //Input field
              color: Colors.grey.shade300,
              child: TextField(
                focusNode: myFocusNode,
                controller: textField,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(12),
                  hintText: "Type your message here",
                ),
                onSubmitted: (text) {
                  setState(() {
                    messages.add(Message(
                        text: text, date: DateTime.now(), sentByMe: true));
                  });
                  clearText();
                  myFocusNode.requestFocus();
                },
              ))
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
