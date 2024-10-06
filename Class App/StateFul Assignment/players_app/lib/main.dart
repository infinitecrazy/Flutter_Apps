import 'package:flutter/material.dart';

void main() {
  runApp(const PlayersApp());
}

class PlayersApp extends StatefulWidget {
  const PlayersApp({super.key});

  @override
  State<PlayersApp> createState() => _PlayersAppState();
}

class _PlayersAppState extends State<PlayersApp> {
  int _counter = 0;

  List<String> playerList = <String>[
    "https://i.pinimg.com/736x/de/b4/df/deb4df530bfee88fe07b2b9d49e7abf2.jpg",
    "https://media.assettype.com/freepressjournal/2023-10/09f32e61-6fcd-4ab1-b7aa-646aa40b9732/F9tLCrCaQAAa_Yw.jpeg?width=1200",
    "https://theteenagertoday.com/wp/wp-content/uploads/2024/07/smriti-mandhana-bat.webp",
    "https://www.livemint.com/lm-img/img/2024/07/15/600x338/ANI-20240701074-0_1720450579604_1721018100800.jpg",
    "https://www.cricadium.com/wp-content/uploads/2024/09/Hardik-Pandya-Set-to-Make-Red-Ball-Comeback-with-Baroda-in-Ranji-Trophy-jpg.webp"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Players",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Player App"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                playerList[_counter],
                height: 300,
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (_counter < playerList.length - 1) {
              _counter++;
            } else {
              _counter = 0;
            }
            setState(() {});
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
