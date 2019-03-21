import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

const URL="https://www.mandiguru.co.in/daily-bhav/maharashtra?mandi=PUNE&search=search";

class link extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return WebviewScaffold(
     url: URL,
     appBar: AppBar(
       title: Text("Rates"),
       backgroundColor: Colors.green,
     ),
     withJavascript: true,
     withLocalStorage: true,
     withZoom: true,
    );
  }
}