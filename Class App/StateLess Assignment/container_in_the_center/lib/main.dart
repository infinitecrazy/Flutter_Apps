import "package:flutter/material.dart";

void main() {
  runApp(const CenterContainer());
}

class CenterContainer extends StatelessWidget {
  const CenterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Center Container Application"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
