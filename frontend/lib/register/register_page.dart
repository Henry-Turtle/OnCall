import 'package:flutter/material.dart';
import 'package:frontend/register/basic_top_bar.dart';
import 'package:frontend/colors.dart';
import '../homepage/home_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(
          children: [const BasicTopBar()],
        ),
        const RegisterForm()
      ]),
    );
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});
  static const fillColor = MyColors.inputFill;
  static const padding = 8.0;
  static const height = 25.0;

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(scaffoldBackgroundColor: Colors.green),
      child: Form(
          key: _formKey,
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                children: [
                  Container(height: 30),
                  InputField("Email"),
                  InputField("Title"),
                  InputField("First Name"),
                  InputField("Last Name"),
                  InputField("Address"),
                  InputField("Password"),
                  InputField("Repeat Password"),
                  Spacer(),
                  Center(
                      //Input Button
                      child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width * .7,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 0,
                          color: Colors.transparent,
                        ),
                        color: MyColors.blue,
                        boxShadow: [
                          BoxShadow(
                              color: MyColors.grey,
                              offset: Offset(0.0, 10.0),
                              spreadRadius: -2,
                              blurRadius: 5)
                        ]),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ));
                        },
                        child: FittedBox(
                            fit: BoxFit.contain, child: Text("Sign Up"))),
                  )),
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: () => print(""),
                    child: Text("I Already Have an Account",
                        style: TextStyle(
                            fontSize: 15,
                            color: MyColors.darkBlue,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline)),
                  ),
                  SizedBox(height: 40)
                ],
              ),
            ),
          )),
    );
  }
}

class InputField extends StatelessWidget {
  final name;
  InputField(this.name);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            name,
            style: TextStyle(color: MyColors.inputText),
          ),
        ),
      ),
      Padding(
          padding: EdgeInsets.only(bottom: RegisterForm.padding),
          child: SizedBox(
              height: RegisterForm.height,
              child: TextFormField(
                validator: (value) {},
                style: TextStyle(color: MyColors.inputText, fontSize: 15),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: RegisterForm.fillColor,
                    contentPadding: EdgeInsets.only(left: 5, bottom: 20),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: RegisterForm.fillColor))),
              )))
    ]);
  }
}
