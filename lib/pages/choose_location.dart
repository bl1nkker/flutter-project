import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  // async function
  void getData() async {
    // simulate network request for a username
    await Future.delayed(const Duration(seconds: 3), () {
      print('yoshi');
    });
    print('Hello world');
  }

  // LifeCycle: on mounting component
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  // LifeCycle: on every update of the component
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Choose your location'),
        ),
        body: const Text('Choose Location Screen'));
  }
}
