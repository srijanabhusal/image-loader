import 'package:flutter/material.dart';

  void main() => runApp(MaterialApp(debugShowCheckedModeBanner:false,home: MyApp(),));

   class MyApp extends StatefulWidget {
     @override
     _MyAppState createState() => _MyAppState();
   }
   
   class _MyAppState extends State<MyApp> {
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: Text('image loader'),
         ),
         body: Column(children: <Widget>[
                Text("This image is displayed from local storage"),

                Row(children: <Widget>[
                    Container(
                    padding: EdgeInsets.only(left: 100),
                    child: Image.asset("img/lamp.JPG"),
                    height: 200.0,
                    width: 200.0,
                    ),         
                  ],),

                Text("This image is displayed directly from internet"),

                Row(children: <Widget>[
                  Container(
                  padding: EdgeInsets.only(left: 100), 
                  child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr7rkFzEQdJxTsMThnNZEvJnKUIfpsxp7P5od6LWNONTb40UzB_Q&s"),
                  height: 200.0,
                  width: 200.0,
                ),
                ],)


               ],)
       );
     }
   }

