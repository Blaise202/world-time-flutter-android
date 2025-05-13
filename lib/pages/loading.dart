import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading';

  void setupWorldTime() async {
    WorldTime timeInstance = WorldTime(location: 'Bujumbura', flag: 'burundi.png', url: 'Africa/Bujumbura');
    await timeInstance.getTime();
    setState(() {
      time = timeInstance.time;
    });
  }

  @override
  void initState(){
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:EdgeInsets.all(50),
        child: Text(time)
      ),
    );
  }
}
