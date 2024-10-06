import 'package:flutter/material.dart';
import 'package:mainaxisalignment_column/SpaceAround.dart';
import 'package:mainaxisalignment_column/SpaceBetWeen.dart';

void main() {
  runApp(const SpaceAround());
}

class SpaceEvenly extends StatelessWidget {
  const SpaceEvenly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Column Demo",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.black,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
            ],
          )),
    );
  }
}
