// import 'package:flutter/material.dart';
// import 'package:you_class/homepage.dart';

// class IntermediatePage extends StatefulWidget {
//   const IntermediatePage({Key? key}) : super(key: key);

//   @override
//   State<IntermediatePage> createState() => _IntermediatePageState();
// }

// class _IntermediatePageState extends State<IntermediatePage> {
//   String _selectedOption = 'Option 1';
//   List<String> _options = ['Option 1', 'Option 2', 'Option 3'];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Choose Option"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Academic Box
//             Container(
//               padding: const EdgeInsets.all(20),
//               color: Colors.black,
//               child: Column(
//                 children: [
//                   const Text(
//                     "Academic",
//                     style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   ),
//                   const SizedBox(height: 10),
//                   // You can add more content related to the "Academic" section here
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             // Events Box
//             Container(
//               padding: const EdgeInsets.all(20),
//               color: Colors.black,
//               child: Column(
//                 children: [
//                   const Text(
//                     "Events",
//                     style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   ),
//                   const SizedBox(height: 10),
//                   // You can add more content related to the "Events" section here
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             // Dropdown for choosing options
//             DropdownButton<String>(
//               value: _selectedOption,
//               items: _options.map((String value) {
//                 return DropdownMenuItem<String>(
//                   value: value,
//                   child: Text(value),
//                 );
//               }).toList(),
//               onChanged: (String? value) {
//                 setState(() {
//                   _selectedOption = value!;
//                 });
//               },
//             ),
//             const SizedBox(height: 20),
//             // Submit Button
//             ElevatedButton(
//               onPressed: () {
//                 // Handle submit action
//                 // You can navigate to the next page or perform any other action here
//                 // For example, navigate to HomePage:
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const HomePage()),
//                 );
//               },
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
//                 foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
//               ),
//               child: const Text("Submit"),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: const IntermediatePage(),
//   ));ß
// }

import 'package:flutter/material.dart';

import 'homepage.dart';

class IntermediatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose Option"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Academic Box
            InkWell(
              onTap: () {
                // Navigate to HomePage when Academic is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Text(
                      "Academic",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // You can add more content related to the "Academic" section here
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Events Box
            InkWell(
              onTap: () {
                // Navigate to HomePage when Events is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Text(
                      "Events",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // You can add more content related to the "Events" section here
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: IntermediatePage(),
  ));
}
