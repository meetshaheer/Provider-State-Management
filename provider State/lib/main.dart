import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_State/provider/count_provider.dart';
import 'package:provider_State/screen/count-example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CountProvider(),
        child: const MaterialApp(
          home: Count_Example(),
        ));
  }
}
