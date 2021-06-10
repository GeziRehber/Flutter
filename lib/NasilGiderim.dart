import 'package:flutter/material.dart';
import 'package:flutter_app3/Anasayfa.dart';
import 'package:provider/provider.dart';


void main() {
  return runApp(NasilGiderim());
}

class NasilGiderim extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'uber clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyApp2(),
    );
  }
}