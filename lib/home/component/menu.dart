import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ttgt/home/controller/menu_controller.dart';
import 'package:ttgt/widget/card_image_and_text.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> with TickerProviderStateMixin {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  final MenuController menuController = Get.put(MenuController());

  @override
  void initState() {
    menuController.getMenu();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        Expanded(
          child: Obx(() => SizedBox(
              height: 200.0,
              child: new GridView.count(
                  crossAxisCount: 4,
                  children: menuController.loadComponent()))),
        ),
      ],
    );
  }
}
