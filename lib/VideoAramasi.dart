 import 'package:flutter/material.dart';

class VideoAramasi extends StatefulWidget {
  @override
  _VideoAramasiState createState() => _VideoAramasiState();
}

class _VideoAramasiState extends State<VideoAramasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Video Araması"),
        ),
        body:Center(
          child: Text("Video Araması Sayfası"),
        )
    );
  }
}
