import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiih/home/component/header.dart';
import 'package:hiih/home/component/menu.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('hehe')),
      body: Container(
          child: Column(
        children: [Header(), const SizedBox(height: 30), Menu()],
      )),
    );
  }
}
