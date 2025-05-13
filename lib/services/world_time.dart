import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  late String location; // local name for the UI
  late String time; // the time in that location
  late String flag; // url to an asset flag icon
  late String url; // location url for api endpoint

  WorldTime({required this.location,required this.flag,required this.url});

  Future<void> getTime() async {
    final response = await get(Uri.parse("http://172.16.0.225:8000/api/time/$url"));
    Map data = jsonDecode(response.body);

    time = data['time']['date'];
  }

}

