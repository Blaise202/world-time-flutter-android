import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void  getData() async {
    final response = await get(Uri.parse("http://172.16.0.225:8000/api"));
    Map data = jsonDecode(response.body);
    print(data['message']);
  }

  @override
  void initState(){
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading page'),
    );
  }
}
