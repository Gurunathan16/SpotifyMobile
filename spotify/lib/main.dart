//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:spotify/view/gettstart/get_started.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.green,
      ),
      home: const GetStarted(),
    );
  }
}
