import 'package:flutter/material.dart';
import 'package:world_clock/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading';
  void setupWorldTime() async {
    WorldTime instance = WorldTime('Colombo', 'srilanka.png', 'Asia/Colombo');
    await instance.getTime();
    print(instance.time);
    setState(() {
      time = instance.time;
    });

    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(50.0),
      child: Text('$time'),
    ));
  }
}
