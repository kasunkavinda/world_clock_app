import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('init state ran');
  }

  @override
  Widget build(BuildContext context) {
    print('build state ran');
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text('Choose a Location'),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(children: [
          Text('choose location'),
          FlatButton(
              onPressed: () {
                setState(() {
                  counter = counter + 1;
                });
              },
              child: Text('Increment'),
              color: Colors.amber),
          Text('$counter')
        ]));
  }
}
