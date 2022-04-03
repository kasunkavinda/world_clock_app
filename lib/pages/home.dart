import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments as Map;

    return Scaffold(
        body: SafeArea(
            child: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: data['isDayTime']
                  ? NetworkImage(
                      'https://img.freepik.com/free-vector/vector-images-forest-daytime_46176-155.jpg')
                  : NetworkImage(
                      'https://www.freevector.com/uploads/vector/preview/16239/FreeVector-City-Night-Vector.jpg'),
              fit: BoxFit.cover)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        FlatButton.icon(
          onPressed: () {
            Navigator.pushNamed(context, 'location');
          },
          color: Colors.black87,
          icon: Icon(Icons.edit_location, color: Colors.white),
          label: Text(
            'Edit Location',
            style: TextStyle(color: Colors.white),
          ),
        ),
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
      ]),
    )));
  }
}
