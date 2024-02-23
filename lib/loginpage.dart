import 'package:flutter/material.dart';
import 'utilities.dart';
import 'homepage.dart';
import 'package:http/http.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SizedBox(
      height: 275,
      width: 720,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
                width: 300,
                height: 300,
                child: Image.asset("assets/images/logo.png")),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                  child: Text(
                    "YouClass",
                    style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        fontFamily: font()),
                  )),
              Row(
                children: [
                  Column(
                    children: [
                      LabelledTextField(label: "Username"),
                      LabelledTextField(label: "Password"),
                    ],
                  ),
                  OutlinedButton(
                    onPressed: () {
                      //Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      shadowColor: Colors.black,
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                    ),
                    child: const Text('Login'),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    )));
  }

  void authenticateUser(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }
}
