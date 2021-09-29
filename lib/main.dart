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
      body: Center(
        child:
            // Shortcut
            Image.asset('assets/asset-3.jpg'),
        // Image.network('url-to-img.com')
        // Image(
        //   image:
        //       // NetworkImage('https://images.unsplash.com/photo-1537151672256-6caf2e9f8c95?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80'),

        //       // To add AssetImage (localImage), write images path to pubspec.yaml
        //       AssetImage('assets/asset-3.jpg'),
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => [],
        child: const Text('Click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
