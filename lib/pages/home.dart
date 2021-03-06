// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty
        ? data
        : ModalRoute.of(context)!.settings.arguments as Map;
    String bgImage = '${data['dayPart']}-1.jpg';
    print(data);

    Color bgColor = data['dayPart'] == 'morning'
        ? Colors.lightBlue.shade200
        : data['dayPart'] == 'noon'
            ? Colors.cyan.shade600
            : data['dayPart'] == 'evening'
                ? Colors.cyan.shade900
                : Colors.deepPurple.shade800;
    Color textColor = data['dayPart'] == 'morning'
        ? Colors.grey.shade100
        : data['dayPart'] == 'noon'
            ? Colors.yellow.shade600
            : data['dayPart'] == 'evening'
                ? Colors.cyan.shade900
                : Colors.white;

    return Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
            child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/backgrounds/${bgImage}'),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton.icon(
                onPressed: () async {
                  // Here we use await, because Widget on /location, use 'Navogator.pop', that will return to this page with the object
                  dynamic result =
                      await Navigator.pushNamed(context, '/location');
                  setState(() {
                    data = {
                      'time': result['time'],
                      'location': result['location'],
                      'dayPart': result['dayPart'],
                      'flag': result['flag']
                    };
                  });
                },
                icon: Icon(Icons.edit_location, color: textColor),
                label: Text(
                  'Edit location',
                  style: TextStyle(
                      fontFamily: 'StickNoBills',
                      fontSize: 24.0,
                      color: textColor),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Center(
                child: Text(
                  data['time'],
                  style: TextStyle(
                      fontSize: 64.0,
                      fontFamily: 'StickNoBills',
                      color: textColor),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Center(
                child: Text(
                  data['location'],
                  style: TextStyle(
                      fontSize: 36.0,
                      letterSpacing: 2.0,
                      fontFamily: 'StickNoBills',
                      color: textColor),
                ),
              ),
            ],
          ),
        )));
  }
}
