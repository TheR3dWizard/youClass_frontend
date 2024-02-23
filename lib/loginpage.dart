import 'package:flutter/material.dart';
import 'utilities.dart';
import 'homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      height: 275,
      width: 720,
      child: Row(
        children: [
          Container(
            child: Image.asset("assets/youclass.png"),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[200],
            ),
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
}