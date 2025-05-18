import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  void setupWorldTime() async {
    WorldTime timeInstance = WorldTime(location: 'Accra', flag: 'burundi.png', url: 'Africa/Accra');
    await timeInstance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location' : timeInstance.location,
      'flag' : timeInstance.flag,
      'time' : timeInstance.time,
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
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitCircle(
          color: Colors.white,
          size: 150.0,
        ),
      )
    );
  }
}
