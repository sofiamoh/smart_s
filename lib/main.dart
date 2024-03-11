import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magical Counter',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        hintColor: Colors.pinkAccent,
        fontFamily: 'Merienda',
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.indigo,
        ),
      ),
      home: const MyHomePage(title: 'Magical Counter'),
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
  int _counter = 0;
  TextEditingController _textEditingController = TextEditingController();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 28,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              // Add your info action here
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.indigo, Colors.deepPurple],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 70,
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 80,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Wondrous Counter',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20),
              Text(
                '$_counter',
                style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    labelText: 'Magical Incantation',
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String enteredText = _textEditingController.text.trim();
          if (enteredText.toLowerCase() == "avada kedavra") {
            _resetCounter();
          } else {
            _incrementCounter();
          }
        },
        tooltip: 'Cast Spell',
        child: const Icon(Icons.add),
        backgroundColor: Colors.pinkAccent,
      ),
    );
  }
}
