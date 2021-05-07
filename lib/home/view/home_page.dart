import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ttgt/home/component/header.dart';
import 'package:ttgt/home/component/hot_news.dart';
import 'package:ttgt/home/component/menu.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // @override
  // Widget build(BuildContext context) {
  //   SystemChrome.setSystemUIOverlayStyle(
  //       SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  //   return Scaffold(
  //       body: SafeArea(
  //     child: Container(
  //       child: Column(
  //         children: [
  //           Container(
  //             height: 200,
  //           ),
  //           Menu(),
  //           Text(
  //             "Tiêu điểm",
  //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  //           ),
  //           HotNews()
  //         ],
  //       ),
  //     ),
  //   ));
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Menu(),
              HotNews(),
            ],
          ),
        ),
      ),
    );
  }
}
