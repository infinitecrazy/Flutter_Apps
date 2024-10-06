import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column With Scroll",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                  "https://www.superherotoystore.com/cdn/shop/articles/wallpapersden.com_itachi-uchiha-4k-naruto-red-night_3840x1975_bf92fc01-ec19-48c3-8085-1b69180fdcb4_3840x.jpg?v=1712576156"),
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
              Image.network(
                  "https://www.superherotoystore.com/cdn/shop/articles/wallpapersden.com_itachi-uchiha-4k-naruto-red-night_3840x1975_bf92fc01-ec19-48c3-8085-1b69180fdcb4_3840x.jpg?v=1712576156"),
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
              Image.network(
                  "https://www.superherotoystore.com/cdn/shop/articles/wallpapersden.com_itachi-uchiha-4k-naruto-red-night_3840x1975_bf92fc01-ec19-48c3-8085-1b69180fdcb4_3840x.jpg?v=1712576156"),
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
