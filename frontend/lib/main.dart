import 'package:flutter/material.dart';
import 'package:frontend/messaging/message_page.dart';
import 'package:frontend/register/register_page.dart';
import 'homepage/home_page.dart';
import 'register/register_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "OnCall",
      theme: ThemeData(fontFamily: 'Inter'),
      debugShowCheckedModeBanner: false,
      home: MessagePage(),
    );
  }
}
