// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyHomePage()));

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  final flutterWebviewPlugin = new FlutterWebviewPlugin();
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://evrikaspace.ru/store/myasnitskij/",
      withJavascript: true,
      geolocationEnabled: true,
      withZoom: false,
      appBar: AppBar(
        title: Text("Мясницкий"),
        backgroundColor: Colors.red,
        elevation: 1000,
        actions: <Widget>[
          Container(
          margin: new EdgeInsets.symmetric(horizontal: 5.0),
          child: InkWell(
            
            child: Icon(Icons.home_filled),
            onTap: () {
              //flutterWebviewPlugin.reload();
              flutterWebviewPlugin
                  .reloadUrl("https://evrikaspace.ru/store/myasnitskij/");
            },
          ),
          ),
          Container(
          margin: new EdgeInsets.symmetric(horizontal: 5.0),
          child: InkWell(
            child: Icon(Icons.shopping_cart),
            
            onTap: () {
              //flutterWebviewPlugin.reload();
              flutterWebviewPlugin.reloadUrl("https://evrikaspace.ru/cart/");
            },
          ),),
          Container(
          margin: new EdgeInsets.symmetric(horizontal: 5.0),
          child: 
          InkWell(
            child: Icon(Icons.question_answer),
            onTap: () {
              //flutterWebviewPlugin.reload();
              flutterWebviewPlugin.reloadUrl("https://evrikaspace.ru/about/");
            },
          ),),
          Container(
          margin: new EdgeInsets.symmetric(horizontal: 10.0),
          child: 
          InkWell(
            child: Icon(Icons.arrow_back),
            onTap: () {
              flutterWebviewPlugin.goBack();
            },
          ),),
          InkWell(
            child: Icon(Icons.arrow_forward),
            onTap: () {
              flutterWebviewPlugin.goForward();
            },
          ),
        ],
      ),
    );
  }
}
