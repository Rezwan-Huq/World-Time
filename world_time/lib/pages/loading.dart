// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    // make the request
    String url = "https://run.mocky.io/v3/a076a37f-4405-4f22-a8b9-d54d63c1fa82";
    final response = await http.get(Uri.parse(url));
    Map data = jsonDecode(response.body);
    // print(data); 
    // get properties from data

    String datetime = data['utc_datetime'];
    String offset = data['utc_offset'].substring(1,3); 

    // print(datetime);
    // print(offset);

    // create datetime object 
    DateTime now = DateTime.parse(datetime);
    now =   now.add(Duration(hours: int.parse(offset)));
    print(now);


    

  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Loading Screen'),
    );
  }
}
