import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  late String location; // current user location. Ex: Berlin
  late String time; // time in this location
  late String flag; // url to country flag icon. Ex.: germany.png
  late String url; // api endpoint. Ex: Europe/Berlin
  late String dayPart; // true/false

  WorldTime({required this.location, required this.flag, required this.url});

  // Future - means that this fucntions will be on await
  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.parse('http://worldtimeapi.org/api/timezone/${url}'));
      Map data = jsonDecode(response.body);

      // Data processing
      String datetime = data['datetime'];
      String offset = data['utc_offset'];
      DateTime now = DateTime.parse(datetime);

      // Set time property
      time = DateFormat.jm()
          .format(now.add(Duration(hours: int.parse(offset.substring(1, 3)))))
          .toString();
      // Set bool
      dayPart = now.hour > 6 && now.hour < 20 ? 'night' : 'night';
    } catch (e) {
      time = 'Could not fetch the time data!';
      dayPart = 'noon';
    }
  }
}
