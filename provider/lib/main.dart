import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home_View(),
    );
  }
}

class Home_View extends StatefulWidget {
  const Home_View({super.key});

  @override
  State<Home_View> createState() => _Home_ViewState();
}

int counter = 0;

class _Home_ViewState extends State<Home_View> {
  @override
  Widget build(BuildContext context) {
    print(build);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[50],
        title: Center(
          child: Text(
            "Welcome to Provider",
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
              counter.toString(),
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
