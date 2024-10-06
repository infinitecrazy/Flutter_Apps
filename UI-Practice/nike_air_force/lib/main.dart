import 'package:flutter/material.dart';

void main() {
  runApp(const Practice());
}

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nike",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Shoes"),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.trolley))
          ],
        ),
        body: Column(
          children: [
            Image.network(
                "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg"),
          ],
        ),
      ),
    );
  }
}
