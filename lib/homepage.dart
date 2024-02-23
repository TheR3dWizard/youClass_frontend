import 'package:flutter/material.dart';
import 'utilities.dart';

class CardCont extends StatelessWidget {
  const CardCont({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _sessionNum = 1;
  String _day = "Monday";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("YouClass"),
        ),
        body: Center(
          child: Column(
            children: [
              const Text(
                "Enter Class Details",
                style: TextStyle(fontSize: 68, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Enter the details for booking a class",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                    value: _day,
                    items: [
                      'Monday',
                      'Tuesday',
                      'Wednesday',
                      'Thursday',
                      'Friday',
                      'Saturday',
                      'Sunday'
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        _day = value!;
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<int>(
                    value: _sessionNum,
                    items: [1, 2, 3, 4, 5, 6, 7].map((int value) {
                      return DropdownMenuItem<int>(
                        value: value,
                        child: Text(value.toString()),
                      );
                    }).toList(),
                    onChanged: (int? value) {
                      setState(() {
                        _sessionNum = value!;
                      });
                    }),
              )
            ],
          ),
        ));
  }
}
