import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'dart:convert';

class WorldTime {
  String location;
  String time;
  String flag;
  String url;

  WorldTime(String location, String flag, String url) {
    this.location = location;
    this.flag = flag;
    this.url = url;
  }
  Future<void> getTime() async {
    try {
      Response response =
          await get('https://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      String dateTime = data['datetime'];

      //to remove + at the begining (+05:30)
      String offSet = data['utc_offset'].substring(1, 3);

      //create datetime object
      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(offSet)));

      // time = now.toString();
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('caught error');
      time = 'Error happened';
    }
  }
}
