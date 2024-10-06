import 'package:flutter/material.dart';

class Combination3rd extends StatelessWidget {
  const Combination3rd({super.key});

  @override
  Widget build(BuildContext context) {
    print("Device Width: ${MediaQuery.of(context).size.width}");
    print("Device Height: ${MediaQuery.of(context).size.height}");
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Column Demo",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.green,
                )
              ],
            ),
          )),
    );
  }
}
