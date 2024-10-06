import 'package:flutter/material.dart';

class SpaceBetween extends StatelessWidget {
  const SpaceBetween({super.key});

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
