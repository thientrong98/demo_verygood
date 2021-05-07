import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HotNewsDetail extends StatefulWidget {
  var url;

  // HotNewsDetail(String url);
  HotNewsDetail({Key? key, required this.url}) : super(key: key);
  @override
  _HotNewsDetailState createState() => _HotNewsDetailState();
}

class _HotNewsDetailState extends State<HotNewsDetail> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tin tức tiêu điểm"),
      ),
      body: WebView(
        initialUrl: widget.url,
      ),
    );
  }
}
