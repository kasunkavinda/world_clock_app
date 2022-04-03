import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    print(data);
    return Scaffold(
        body: SafeArea(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      FlatButton.icon(
          onPressed: () {
            Navigator.pushNamed(context, 'location');
          },
          icon: Icon(Icons.edit_location),
          label: Text('Edit Location')),
      SizedBox(height: 40),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          data['location'],
          style: TextStyle(fontSize: 30),
        )
      ]),
      Text(
        data['time'],
        style: TextStyle(fontSize: 50),
      )
    ])));
  }
}
