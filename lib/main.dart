import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medicinal Timer',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Medicinal Timer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 500.0,
            height: 400,
            decoration: const BoxDecoration(
              color: Color(0xFF303F9F),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(50.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SafeArea(
                    child: Text(
                      'Medicinal',
                      style: TextStyle(
                        fontSize: 70.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text('Timer',
                    style: TextStyle(
                      fontSize: 70.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 150.0),
                    child: Text('1',
                      style: TextStyle(
                        fontSize: 70.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
