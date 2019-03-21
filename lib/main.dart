import 'package:flutter/material.dart';
import 'package:mylink/link.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new HomePage(),
      routes:<String, WidgetBuilder>{
        "/h":(BuildContext context)=>new HomePage(),
        "/F":(BuildContext context)=>new link(), 
      });
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar:new AppBar(title: new Text('Welcome'),backgroundColor: Colors.green),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              new IconButton(
                icon: new Icon(Icons.favorite,color:Colors.black38),
                iconSize: 70.0,
                onPressed: ()=>Navigator.of(context).pushNamed("/F"),
                ),
                new Text("BEAT IT")
            ]
          ),
        ),
      ),
    );
 
  }
}
