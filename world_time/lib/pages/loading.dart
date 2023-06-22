// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() {
    WorldTime instance = WorldTime(
        location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin', time: '');
    instance.getTime();
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Loading Screen'),
    );
  }
}
