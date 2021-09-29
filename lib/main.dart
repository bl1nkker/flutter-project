import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hello world',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              // ! fonts initializes on pubspec.yaml file
              fontFamily: 'StickNoBills',
              letterSpacing: 2.0,
              color: Colors.green),
        ),
        // Centralize the title
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: const Center(
        child: Text("Hello my guys!"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => [],
        child: const Text('Click Me!'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
