import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  List<Map> allQuestions = [
    {
      "question": "Which data type can store int & double ?",
      "option": ["String", "num", "const", "bool"],
      "answer": 1
    },
    {
      "question": "If we dont know which data is coming then use ?",
      "option": ["var", "String", "double", "int"],
      "answer": 0
    },
    {
      "question": "Which is invalid ?",
      "option": ["int x = 10;", "int? x;", "double d = 10.2;", "bool b = 2;"],
      "answer": 3
    },
    {
      "question": "Which data type can change at runtime ?",
      "option": ["bool", "var", "dynamic", "double"],
      "answer": 2
    },
    {
      "question": "Which concept is not in dart ?",
      "option": [
        "Inheritance",
        "method Overriding",
        "method Overloading",
        "List"
      ],
      "answer": 2
    }
  ];

  WidgetStateProperty<Color?> colorChange(int givenAnswer) {
    if (selected != -1) {
      if (givenAnswer == allQuestions[currentValue]["answer"]) {
        return const WidgetStatePropertyAll(Colors.green);
      } else if (selected == givenAnswer) {
        return const WidgetStatePropertyAll(Colors.red);
      } else {
        return const WidgetStatePropertyAll(null);
      }
    } else {
      return const WidgetStatePropertyAll(null);
    }
  }

  int marks = 0;
  bool nextpage = true;
  int currentValue = 0;
  int selected = -1;

  @override
  Widget build(BuildContext context) {
    return changePage();
  }

  Scaffold changePage() {
    if (nextpage == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 220,
                ),
                Text(
                  "Question ${currentValue + 1} / ${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 200,
              height: 30,
              child: Text(
                "Q. ${allQuestions[currentValue]["question"]}",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                SizedBox(
                  width: 200,
                  height: 20,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: colorChange(0),
                    ),
                    onPressed: () {
                      if (selected == -1) {
                        selected = 0;
                      }
                      setState(() {});
                    },
                    child: Text(
                      "A. ${allQuestions[currentValue]["option"][0]}",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                SizedBox(
                  width: 200,
                  height: 20,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: colorChange(1),
                      ),
                      onPressed: () {
                        if (selected == -1) {
                          selected = 1;
                          setState(() {});
                        }
                      },
                      child: Text(
                        "B. ${allQuestions[currentValue]["option"][1]}",
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                SizedBox(
                  width: 200,
                  height: 20,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: colorChange(2),
                      ),
                      onPressed: () {
                        if (selected == -1) {
                          selected = 2;
                        }
                        setState(() {});
                      },
                      child: Text(
                        "C. ${allQuestions[currentValue]["option"][2]}",
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                const SizedBox(
                  width: 25,
                ),
                SizedBox(
                  width: 200,
                  height: 20,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: colorChange(3),
                      ),
                      onPressed: () {
                        if (selected == -1) {
                          selected = 3;
                        }
                        setState(() {});
                      },
                      child: Text(
                        "D. ${allQuestions[currentValue]["option"][3]}",
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selected != -1) {
              if (selected == allQuestions[currentValue]["answer"]) {
                marks++;
              }

              if (currentValue < allQuestions.length - 1) {
                currentValue++;
              } else {
                nextpage = false;
              }

              selected = -1;
              setState(() {});
            }
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Colors.black,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Result",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.orange,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(children: [
              const SizedBox(
                width: 300,
              ),
              SizedBox(
                height: 100,
                width: 200,
                child: Image.network(
                    "https://media.istockphoto.com/vectors/gold-trophy-with-the-name-plate-of-the-winner-of-the-competition-vector-id1168757141?k=20&m=1168757141&s=612x612&w=0&h=_jia0PPMGux63K2gqp-o0OzRcHbd6bvjVQJ70rz3nF8="),
              ),
            ]),
            const Row(children: [
              SizedBox(
                width: 280,
              ),
              Text(
                "Congratulations ...!",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Colors.purple,
                ),
              ),
            ]),
            Row(children: [
              const SizedBox(
                width: 290,
              ),
              Text(
                "You got $marks out of ${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Colors.purple,
                ),
              ),
            ]),
            const SizedBox(
              height: 10,
            ),
            Row(children: [
              const SizedBox(
                width: 350,
              ),
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(Color.fromARGB(255, 238, 200, 88)),
                ),
                onPressed: () {
                  nextpage = true;
                  marks = 0;
                  currentValue = 0;
                  setState(() {});
                },
                child: const Text(
                  "Try Again",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                  ),
                ),
              ),
            ]),
          ],
        ),
      );
    }
  }
}
