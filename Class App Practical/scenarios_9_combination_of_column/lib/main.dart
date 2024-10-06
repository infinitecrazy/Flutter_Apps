import 'package:flutter/material.dart';
import 'package:scenarios_9_combination_of_column/2nd_combination.dart';
import 'package:scenarios_9_combination_of_column/3rd_combination.dart';
import 'package:scenarios_9_combination_of_column/4th_combination.dart';
import 'package:scenarios_9_combination_of_column/5th_combination.dart';
import 'package:scenarios_9_combination_of_column/6th_combination.dart';
import 'package:scenarios_9_combination_of_column/7th_combination.dart';
import 'package:scenarios_9_combination_of_column/8th_combination.dart';
import 'package:scenarios_9_combination_of_column/9th_combination.dart';

void main() {
  runApp(const Combination9());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("Device width: ${MediaQuery.of(context).size.width}");
    print("Device height: ${MediaQuery.of(context).size.height}");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column Demo",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.sizeOf(context).height,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              )
            ],
          ),
        ),
      ),
    );
  }
}
