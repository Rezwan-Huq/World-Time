// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    // simulate network request
    String a = await Future.delayed(Duration(seconds: 4), () {
      return 'My name';
    });

    String b = await Future.delayed(Duration(seconds: 2), () {
      return 'Your name';
    });

    print('$a and $b');
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print('build function run');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
      
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
