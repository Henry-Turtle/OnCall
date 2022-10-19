import 'package:flutter/material.dart';
import 'package:frontend/messaging/message_page.dart';
import 'package:frontend/register/information_form.dart';
import 'package:frontend/register/splash_screen.dart';
import 'homepage/home_page.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'dart:convert';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "OnCall",
      theme: ThemeData(fontFamily: 'Inter'),
      debugShowCheckedModeBanner: false,
      home: InteractiveViewer(
          panEnabled: false, // Set it to false to prevent panning.
          minScale: .1,
          maxScale: 100,
          child: SplashScreen()),
    );
  }
}

class two extends StatelessWidget {
  const two({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "OnCall",
      theme: ThemeData(fontFamily: 'Inter'),
      debugShowCheckedModeBanner: false,
      home: InteractiveViewer(
          panEnabled: true, // Set it to false to prevent panning.
          minScale: 0.5,
          maxScale: 4,
          child: SplashScreen()),
    );
  }
}
