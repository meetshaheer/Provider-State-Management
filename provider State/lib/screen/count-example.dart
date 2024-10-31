import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_State/provider/count_provider.dart';

class Count_Example extends StatefulWidget {
  const Count_Example({super.key});

  @override
  State<Count_Example> createState() => Count_ExampleState();
}

class Count_ExampleState extends State<Count_Example> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    print("object");
    return Scaffold(
      body: Center(
        child: Consumer<CountProvider>(
          builder: (context, value, child) {
            return Text(
              value.count.toString(),
              style: TextStyle(fontSize: 20),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setcount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
