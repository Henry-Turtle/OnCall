import 'package:flutter/material.dart';
import 'package:frontend/messaging/message_page.dart';
import 'package:frontend/register/splash_screen.dart';
import 'homepage/home_page.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'dart:convert';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});
  var messages = [];
  var ws = WebSocketChannel.connect(Uri.parse("ws://oncall.dentist:2048"));

  @override
  Widget build(BuildContext context) {
/*     print("Running started");
    ws.stream.listen(
      (event) {
        print(event);
      },
      onError: (error) => print(error),
      onDone: () => print("done"),
    ); */
    ws.sink.add("{\"aim\": \"connect\", \"os\": \"web\", \"version\": \"01\"}");

    return MaterialApp(
        title: "OnCall",
        theme: ThemeData(fontFamily: 'Inter'),
        debugShowCheckedModeBanner: false,
        home: StreamBuilder(
          stream: ws.stream,
          initialData: false,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            final hasConnection = snapshot.hasData;
            if (hasConnection) {
              print("DONE!");
              return SplashScreen();
            }

            return Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Server is offline",
                  style: TextStyle(fontSize: 20),
                ));
          },
        ));
  }
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Text("Hello World"));
  }
}
