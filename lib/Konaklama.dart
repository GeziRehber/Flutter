import 'package:flutter/material.dart';

class Konaklama extends StatefulWidget {
  @override
  _KonaklamaState createState() => _KonaklamaState();
}

class _KonaklamaState extends State<Konaklama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Konaklama"),
        ),
        body:Center(
          child: Text("Konaklama Sayfası"),
        )
    );
  }
}
