import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ttgt/home/controller/menu_controller.dart';
import 'package:ttgt/widget/card_image_and_text.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  final MenuController menuController = Get.put(MenuController());

  @override
  void initState() {
    menuController.getMenu();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(crossAxisCount: 4, children: loadComponent()),
    );
  }

  List<Widget> loadComponent() {
    List<String> _listContent = [
      'Bản đồ',
      'Camera',
      'Cảnh báo',
      'Phản ánh',
      'Tin tức',
      'Tra cứu',
      'Go!Bus',
      'Tra cứu',
      'Go!Bus',
      'Giới thiệu'
    ];
    List<Color> _listColor = [
      Colors.green,
      Colors.blue,
      Colors.red,
      Colors.purple,
      Colors.orange,
      Colors.purple.withOpacity(0.5),
      Colors.green.withOpacity(0.5),
      Colors.purple.withOpacity(0.5),
      Colors.green.withOpacity(0.5),
      Colors.blueGrey
    ];
    List<Widget> componentCell = [];
    int index = 10;
    if (index > 8) {
      for (int i = 0; i < 7; i++) {
        componentCell.add(Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: _listColor[i],
          child: InkWell(
            child: CardImageAndText(
              content: _listContent[i],
            ),
            onTap: () {
              // print(i);
            },
          ),
        ));
      }
      componentCell.add(Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: _listColor[8],
        child: InkWell(
          child: CardImageAndText(
            content: "More",
          ),
          onTap: () {
            // print(i);
            // MainController.changeLayout(context, 8);
          },
        ),
      ));
    }

    return componentCell;
  }
}
