import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("Device width: ${MediaQuery.of(context).size.width}");
    print("Device height: ${MediaQuery.of(context).size.height}");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "ListView Demo",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.orange,
          ),
          body: ListView(
            children: [
              Image.network(
                  "https://i.pinimg.com/originals/a5/a8/b9/a5a8b9ce5bda5871f138603fb10ce01d.jpg"),
              const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              const Text(
                "Uchiha Itachi",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Image.network(
                  "https://i.pinimg.com/originals/a5/a8/b9/a5a8b9ce5bda5871f138603fb10ce01d.jpg"),
              GestureDetector(
                onTap: () {
                  print("Button Pressed");
                },
                child: Container(
                  height: 50,
                  color: Colors.amber,
                  child: const Text("Press Me"),
                ),
              )
            ],
          )),
    );
  }
}
