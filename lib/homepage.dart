// import 'package:flutter/material.dart';

// class CardCont extends StatelessWidget {
//   const CardCont({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _sessionNum = 1;
//   String _day = "Monday";
//   String _hall = "Y402";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("YouClass"),
//         ),
//         body: Center(
//           child: Column(
//             children: [
//               const Text(
//                 "Enter Class Details",
//                 style: TextStyle(fontSize: 68, fontWeight: FontWeight.bold),
//               ),
//               const Text(
//                 "Enter the details for booking a class",
//                 style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: DropdownButton<String>(
//                         value: _day,
//                         items: [
//                           'Monday',
//                           'Tuesday',
//                           'Wednesday',
//                           'Thursday',
//                           'Friday',
//                           'Saturday',
//                           'Sunday'
//                         ].map((String value) {
//                           return DropdownMenuItem<String>(
//                             value: value,
//                             child: Text(value),
//                           );
//                         }).toList(),
//                         onChanged: (String? value) {
//                           setState(() {
//                             _day = value!;
//                           });
//                         }),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: DropdownButton<int>(
//                         value: _sessionNum,
//                         items: [1, 2, 3, 4, 5, 6, 7].map((int value) {
//                           return DropdownMenuItem<int>(
//                             value: value,
//                             child: Text(value.toString()),
//                           );
//                         }).toList(),
//                         onChanged: (int? value) {
//                           setState(() {
//                             _sessionNum = value!;
//                           });
//                         }),
//                   ),
//                 ],
//               ),
//               OutlinedButton(
//                   onPressed: () {
//                     apiCall();
//                   },
//                   child: const Text("Check Class"))
//             ],
//           ),
//         ));
//   }

//   void showClass(String hall) {
//     showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title: const Text("Class Details",
//                 style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
//             content: SizedBox(
//               height: 300,
//               width: 300,
//               child: Column(
//                 children: [
//                   const Text(
//                     "Class has already been booked",
//                     style:
//                         TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
//                   ),
//                   Text(
//                     "Day: $_day",
//                     style: const TextStyle(
//                         fontSize: 24, fontWeight: FontWeight.w400),
//                   ),
//                   Text(
//                     "Session: $_sessionNum",
//                     style: const TextStyle(
//                         fontSize: 24, fontWeight: FontWeight.w400),
//                   ),
//                   Text(
//                     "Hall: $hall",
//                     style: const TextStyle(
//                         fontSize: 24, fontWeight: FontWeight.w400),
//                   )
//                 ],
//               ),
//             ),
//             actions: [
//               TextButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: const Text("Exit")),
//             ],
//           );
//         });
//   }

//   void bookClass(List<String> halls) {
//     showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title: const Text("Class Details",
//                 style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
//             content: SizedBox(
//               height: 300,
//               width: 300,
//               child: Column(
//                 children: [
//                   const Text(
//                     "Class has already been booked",
//                     style:
//                         TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
//                   ),
//                   Text(
//                     "Day: $_day",
//                     style: const TextStyle(
//                         fontSize: 24, fontWeight: FontWeight.w400),
//                   ),
//                   Text(
//                     "Session: $_sessionNum",
//                     style: const TextStyle(
//                         fontSize: 24, fontWeight: FontWeight.w400),
//                   ),
//                   const Text(
//                     "Available Files",
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: DropdownButton<String>(
//                         value: _hall,
//                         items: halls.map((String value) {
//                           return DropdownMenuItem<String>(
//                             value: value,
//                             child: Text(value),
//                           );
//                         }).toList(),
//                         onChanged: (String? value) {
//                           setState(() {
//                             _hall = value!;
//                           });
//                         }),
//                   )
//                 ],
//               ),
//             ),
//             actions: [
//               TextButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: const Text("Exit")),
//               TextButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: const Text(
//                     "Book Class",
//                     style: TextStyle(color: Colors.black),
//                   )),
//             ],
//           );
//         });
//   }

//   void apiCall() {
//     if (_day.toLowerCase() == "tuesday") {
//       showClass("Y402");
//     } else {
//       bookClass(["Y402", "Y301"]);
//     }
//   }

//   // void bookingMenu() {
//   //   showDialog(context: context, builder: (context) {});
//   // }
// }

import 'package:flutter/material.dart';

class CardCont extends StatelessWidget {
  const CardCont({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _sessionNum = 1;
  String _day = "Monday";
  String _hall = "Y402";

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                    },
                  ),
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
                    },
                  ),
                ),
              ],
            ),
            OutlinedButton(
              onPressed: () {
                apiCall();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: const Text("Check Class"),
            ),
          ],
        ),
      ),
    );
  }

  void showClass(String hall) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            "Class Details",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          content: SizedBox(
            height: 300,
            width: 300,
            child: Column(
              children: [
                const Text(
                  "Class has already been booked",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
                Text(
                  "Day: $_day",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Session: $_sessionNum",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Hall: $hall",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: const Text("Exit"),
            ),
          ],
        );
      },
    );
  }

  void bookClass(List<String> halls) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            "Class Details",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          content: SizedBox(
            height: 300,
            width: 300,
            child: Column(
              children: [
                const Text(
                  "Class has already been booked",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
                Text(
                  "Day: $_day",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Session: $_sessionNum",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Text(
                  "Available Files",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton<String>(
                    value: _hall,
                    items: halls.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        _hall = value!;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: const Text("Exit"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: const Text(
                "Book Class",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }

  void apiCall() {
    if (_day.toLowerCase() == "tuesday") {
      showClass("Y402");
    } else {
      bookClass(["Y402", "Y301"]);
    }
  }
}
