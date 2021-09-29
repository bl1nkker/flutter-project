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
              color: Colors.white),
        ),
        // Centralize the title
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ColumnInRow(),
          ColumnInRow(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => [],
        child:
            const Icon(Icons.plus_one_rounded, color: Colors.white, size: 25.0),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}

class ColumnInRow extends StatelessWidget {
  const ColumnInRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          color: Colors.red,
          child: Image.asset(
            'assets/asset-1.jpg',
            height: 128.0,
            width: 128.0,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          color: Colors.green,
          child: Image.asset(
            'assets/asset-2.jpg',
            height: 128.0,
            width: 128.0,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          color: Colors.blue,
          child: Image.asset(
            'assets/asset-3.jpg',
            height: 128.0,
            width: 128.0,
          ),
        ),
      ],
    );
  }
}
