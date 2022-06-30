import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Articuno Intern',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> arr = [
    Container(
      width: 125,
      height: 125,
      color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0),
    ),
    Container(
      width: 125,
      height: 125,
      color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              arr = List.from(arr.reversed);
            });
          },
          child: const Icon(Icons.swap_horiz),
        ),
        body: SafeArea(
            child: Row(
          children: [
            for (var item in arr) item,
          ],
        )));
  }
}
