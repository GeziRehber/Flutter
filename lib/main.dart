import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app3/Anasayfa.dart';
import 'package:provider/provider.dart';
import 'Login.dart';
import 'blocs/application_bloc.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>ApplicationBloc(),
      child: MaterialApp(
        //debug yazısını false yapar
        debugShowCheckedModeBanner: false,

       // title: 'Giriş Ekranı',
        theme: ThemeData(
            primarySwatch: Colors.brown,
            accentColor: Colors.brown[600]),
        home: Scaffold(
           // appBar: AppBar(title: Text("Giriş EKranı",
            //  style: TextStyle(fontSize: 20.0,color: Colors.white),
           // ),),
            body: MyApp2()),
      ),
    );
  }
}