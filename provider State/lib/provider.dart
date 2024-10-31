import 'dart:async';

import 'package:flutter/material.dart';

class Why_Provider_Screen extends StatefulWidget {
  const Why_Provider_Screen({super.key});

  @override
  State<Why_Provider_Screen> createState() => _Home_ViewState();
}

class _Home_ViewState extends State<Why_Provider_Screen> {
  int counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      counter++;
      print(counter);
      setState(() {});
    }); 
  }

  @override
  Widget build(BuildContext context) {
    print(build);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[50],
        title: const Center(
          child: Text(
            "Welcome to Provider Screen",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              DateTime.now().toString().substring(11, 19),
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          setState(() {});
          print(counter);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
