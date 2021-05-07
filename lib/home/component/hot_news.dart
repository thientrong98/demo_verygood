import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttgt/home/component/hot_new_detail.dart';
import 'package:ttgt/widget/card_hot_news.dart';
import 'package:ttgt/home/controller/hot_news_controller.dart';

class HotNews extends StatefulWidget {
  @override
  _HotNewsState createState() => _HotNewsState();
}

class _HotNewsState extends State<HotNews> {
  final HotNewController hotNewController = Get.put(HotNewController());

  @override
  void initState() {
    hotNewController.getHotNew();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tin tức tiêu điểm",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          hotNewController.hotNewsModel.isNotEmpty
              ? ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 300, minHeight: 150),
                  child: ListView.builder(
                    shrinkWrap: false,
                    scrollDirection: Axis.horizontal,
                    itemCount: hotNewController.hotNewsModel.length,
                    itemBuilder: (BuildContext context, int index) => SizedBox(
                      width: 200,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.blue[100],
                        child: Container(
                          child: InkWell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.remove_circle,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(height: 10),
                                  SingleChildScrollView(
                                    child: CardHotNew(
                                      title: hotNewController
                                          .hotNewsModel[index].title,
                                      subtitle: hotNewController
                                          .hotNewsModel[index].subtitle,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HotNewsDetail(
                                        url: hotNewController
                                            .hotNewsModel[index].url)),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              : Container(),
        ],
      )),
    );
  }
}
