import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  late String location; // local name for the UI
  late String time; // the time in that location
  late String flag; // url to an asset flag icon
  late String url; // location url for api endpoint

  WorldTime({required this.location,required this.flag,required this.url});

  Future<void> getTime() async {
    try {
      final response = await get(Uri.parse("http://192.168.137.1:8000/api/time/$url"));
      Map data = jsonDecode(response.body);

      time = data['time']['date'];
      DateTime dateTime = DateTime.parse(time);
      time = DateFormat.jm().format(dateTime);
    }
    catch(e){
      time = 'Error fetching time. caught: $e';
    }

  }

}

