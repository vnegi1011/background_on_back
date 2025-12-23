import 'package:flutter/material.dart';
import 'package:background_on_back/background_on_back.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) {
          if (didPop) return;
          BackgroundOnBack.pop();
        },
        child: Scaffold(
          appBar: AppBar(title: const Text('Plugin example app')),
          body: Center(child: Text('Press Back button to backgroun this app')),
        ),
      ),
    );
  }
}
