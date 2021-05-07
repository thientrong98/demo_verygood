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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Menu(),
              SizedBox(height: 10),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _iconAndText("Nhà", 'assets/images/ic_home.png',
                        "Có vẻ bạn đang ở nhà"),
                    _iconAndText("Công ty", 'assets/images/ic_office.png',
                        "Có vẻ bạn đang ở nhà"),
                    _iconAndText("Người yêu", 'assets/images/ic_lover.png',
                        "Có vẻ bạn đang ở nhà")
                  ],
                ),
              ),
              HotNews(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconAndText(String text, String icon, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            // Icon(icon),
            Image.asset(
              icon,
              width: 48,
              height: 48,
            ),
            SizedBox(width: 5),
            Text(
              text,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Text(
            content,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
