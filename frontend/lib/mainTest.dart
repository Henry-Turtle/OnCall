import 'package:flutter/material.dart';
import 'package:frontend/messaging/message_page.dart';
import 'package:frontend/register/phone_number.dart';
import 'package:frontend/register/sms.dart';
import 'homepage/home_page.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'dart:convert';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: SMS("617-999-5888"));
  }
}
