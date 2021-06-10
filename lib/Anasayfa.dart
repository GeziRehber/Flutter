import 'package:flutter/material.dart';
import 'package:flutter_app3/GezilecekYerler.dart';
import 'package:flutter_app3/Konaklama.dart';
import 'package:flutter_app3/KullaniciProfili.dart';
import 'package:flutter_app3/NasilGiderim.dart';
import 'package:flutter_app3/RestaurantBar.dart';
import 'package:flutter_app3/VideoAramasi.dart';
import 'package:flutter_app3/screens/dart/home_screen.dart';
import 'package:flutter_app3/screens/dart/home_screen2.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


void main() =>runApp(MyApp2());

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.green
      ),
      home: NavigasyonSayfasi(),
    );
  }
}

class NavigasyonSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: Colors.white,
          ),
          child: StaggeredGridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            staggeredTiles: [
              StaggeredTile.count(2, 2),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(4, 1),
              StaggeredTile.count(2, 2),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(4, 1),
            ],
            children: <Widget>[

              myPhotoList(
                  "https://images.unsplash.com/photo-1511551203524-9a24350a5771?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),
              myPhotoList(
                  "https://images.unsplash.com/photo-1476703993599-0035a21b17a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              myPhotoList(
                  "https://images.unsplash.com/photo-1482235225574-c37692835cf3?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
              myPhotoList(
                  "https://images.unsplash.com/photo-1437954820769-76094033b90f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              myPhotoList(
                  "https://images.unsplash.com/photo-1469406396016-013bfae5d83e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),
              captionText("Family pics", "Just now"),

              myPhotoList(
                  "https://images.unsplash.com/photo-1485871981521-5b1fd3805eee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),
              myPhotoList(
                  "https://images.unsplash.com/photo-1445023086979-7244a12345a8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              myPhotoList(
                  "https://images.unsplash.com/photo-1532960401447-7dd05bef20b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=679&q=80"),
              myPhotoList(
                  "https://images.unsplash.com/uploads/1412594480669535c9ef9/9d85c477?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              myPhotoList(
                  "https://images.unsplash.com/photo-1499566727020-881da110a0b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              captionText("NewYork", "1 day ago"),
            ],
            padding: const EdgeInsets.all(4.0),
          ),
        ),
      ),



      drawer: Drawer(
      child: ListView(

        padding: EdgeInsets.zero,
        children: <Widget>[

          UserAccountsDrawerHeader(
            accountName: Text("Rumeysa TAŞ"),
            accountEmail: Text("@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("images/indir.jpg"),
            ),
          ),

          ListTile(
            title: Text("Nasıl Giderim?"),
            leading: Icon(Icons.location_on),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => NasilGiderim(),
              ));
            },
          ),
          ListTile(
            title: Text("Size Yakın Yerler"),
            leading: Icon(Icons.location_city),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ));
            },
          ),
          ListTile(
            title: Text("Gezilecek Yerler"),
            leading: Icon(Icons.card_travel),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) =>GezilecekYerler(),
              ));
            },
          ),
          ListTile(
            title: Text("Restaurant & Bar"),
            leading: Icon(Icons.restaurant),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => HomePage(),
              ));
            },
          ),
          ListTile(
            title: Text("Konaklama"),
            leading: Icon(Icons.hotel),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => Konaklama(),
              ));
            },
          ),
          ListTile(
            title: Text("Video Araması"),
            leading: Icon(Icons.search),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => HomeScreen2(),
              ));
            },
          ),
          ListTile(
            title: Text("Kullanıcı Profili"),
            leading: Icon(Icons.person_rounded),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => EditProfilePage(),
              ));
            },
          )
        ],
      ),
      ),
    );
  }
  Widget captionText(String titleText, String subText) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height:18.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(titleText,
                  style: TextStyle(color: Colors.black, fontSize: 24.0),),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(subText,
                  style: TextStyle(color: Colors.blueGrey, fontSize: 16.0),),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myPhotoList(String MyImages) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
              MyImages),
        ),
      ),

    );
  }
}

