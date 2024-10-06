import 'package:flutter/material.dart';

class Combination8 extends StatelessWidget {
  const Combination8({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.center,
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
