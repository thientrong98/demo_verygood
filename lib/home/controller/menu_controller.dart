import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttgt/widget/card_image_and_text.dart';
import 'package:ttgt/models/menuItem.dart';

class MenuController extends GetxController {
  final DatabaseReference databaseReference =
      FirebaseDatabase.instance.reference();
  List<Rx<MenuItem>> listMenu = <Rx<MenuItem>>[].obs;
  int sizeOfListMenu = 0;
  getMenu() {
    try {
      databaseReference.child('menu').once().then((DataSnapshot snapshot) {
        List<dynamic> resultList = snapshot.value;
        for (var i = 0; i < resultList.length; i++) {
          listMenu.add(new MenuItem(
                  icon: resultList[i]["image"],
                  title: resultList[i]["name"],
                  color: resultList[i]["color"])
              .obs);
        }
      });
    } catch (Exception) {
      print(Exception);
    }
  }

  List<Widget> loadComponent() {
    var componentCell = <Widget>[];

    if (listMenu.isNotEmpty) {
      if (listMenu.length > 8) {
        sizeOfListMenu = 7;
        for (var i = 0; i < 7; i++) {
          addCellMenu(
              componentCell, listMenu[i].value.title, listMenu[i].value.color);
        }
        componentCell.add(Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          // color: Colors.green[300],
          child: InkWell(
            child: CardImageAndText(
              content: 'More',
              image: "assets/images/ic_more.png",
            ),
            onTap: () {
              // componentCell.length = 5;
              sizeOfListMenu = listMenu.length;
              for (var j = 7; j < listMenu.length; j++) {
                addCellMenu(componentCell, listMenu[j].value.title,
                    listMenu[j].value.color);
              }
            },
          ),
        ));
      }
    }

    return componentCell;
  }

  void addCellMenu(List<Widget> componentCell, String title, String color) {
    var splitColor = color.split(',');

    componentCell.add(Card(
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(15.0),
      // ),
      // color: Color.fromARGB(int.parse(splitColor[0]), int.parse(splitColor[1]),
      //     int.parse(splitColor[2]), int.parse(splitColor[3])),
      child: InkWell(
        child: CardImageAndText(
          content: title,
          image: "assets/images/ic_map.jpg",
        ),
        onTap: () {
          // print(i);
        },
      ),
    ));
  }
}
