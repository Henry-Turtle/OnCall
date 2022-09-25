import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:frontend/register/phone_number.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF00A3FF), Color(0xFF8bc2e4)],
                stops: [0, 1])),
        child: Column(children: [
          Container(height: MediaQuery.of(context).size.height * .05),
          Image(
              image: const AssetImage("assets/images/Logo.jpg"),
              height: MediaQuery.of(context).size.height * .3),
          const Spacer(
            flex: 4,
          ),
          TextButton(
            onPressed: (() => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PhoneNumber(),
                ))),
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width * .9,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, .2),
                      offset: Offset(0, 3),
                      blurRadius: 2,
                    )
                  ]),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: FittedBox(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 15,
          ),
          TextButton(
            onPressed: (() => print("")),
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width * .9,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.white,
              ),
              child: const Padding(
                padding:
                    EdgeInsets.only(top: 10.0, right: 20, bottom: 10, left: 20),
                child: FittedBox(
                  child: Text(
                    "I already have an account",
                    style: TextStyle(
                      color: Color(0xFF615D5D),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: RichText(
                textAlign: TextAlign.left,
                text: const TextSpan(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: "By signing up, you agree to our "),
                      TextSpan(
                          text: "Terms ",
                          style:
                              TextStyle(decoration: TextDecoration.underline)),
                      TextSpan(text: "and our "),
                      TextSpan(
                          text: "Privacy Policy",
                          style:
                              TextStyle(decoration: TextDecoration.underline)),
                    ])),
          ),
          Container(
            height: 10,
          )
        ]),
      ),
    );
  }
}
