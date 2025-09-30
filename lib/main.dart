import 'package:flutter/material.dart';
import 'package:spotify_clone/pages/home.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
     
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

