import 'dart:ffi';

import 'package:flutter/material.dart';


class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void  getData() async {
    String username = await Future.delayed(Duration(seconds: 2), () {
      return 'Blaise';
    });

    String bio = await Future.delayed(Duration(seconds: 3), () {
      return 'Passionate software developer';
    });

    print('$username - $bio');
  }

  @override
  void initState(){
    super.initState();
    getData();
    print('hello');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading page'),
    );
  }
}
