import 'package:http/http.dart' as http;
import 'dart:convert';

class WorldTime {
  String location; // location name for the UI
  String time; // the time in that location
  String flag; // url to an asset flag icon3
  String url; // location url for APT endpoints

  WorldTime({this.location, this.flag, this.url});
  

  void getTime() async {
    // make the request
    String url = "http://worldtimeapi.org/api/timezone/$url";
    final response = await http.get(Uri.parse(url));
    Map data = jsonDecode(response.body);
    // print(data);

    // get properties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);

    // create datetime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));

    // set the time property
    time = now.toString();
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }
}
