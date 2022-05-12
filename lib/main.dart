import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Listofstring(),
    );
  }
}

class Listofstring extends StatefulWidget {
  const Listofstring({Key? key}) : super(key: key);

  @override
  State<Listofstring> createState() => _ListofstringState();
}

List<String> name = [
  "Task 1",
  "Task 2",
  "Task 3",
  "Task 4",
];

class _ListofstringState extends State<Listofstring> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello ! Its Flutter World !!!"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              child: const Text(
                "Task Title",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.green,
                ),
              ),
              height: 90,
              width: 800,
              color: Colors.white,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: name.length,
            itemBuilder: (c, i) {
              return CardItem(
                name: name[i],
              );
            },
          )
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 30,
          color: Colors.green,
        ),
      ),
      padding: const EdgeInsets.all(0.0),
      height: 100,
      width: 400,
      color: Colors.white,
    );
  }
}
