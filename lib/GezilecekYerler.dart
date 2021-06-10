import 'package:flutter/material.dart';

class GezilecekYerler extends StatefulWidget {
  @override
  _GezilecekYerlerState createState() => _GezilecekYerlerState();
}

class _GezilecekYerlerState extends State<GezilecekYerler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Gezilecek Yerler"),
        ),
        body:Center(
          child: Text("Gezilecek yerler Sayfası"),
        )
    );
  }
}
