import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:ttgt/models/menuItem.dart';

class MenuController extends GetxController {
  final DatabaseReference databaseReference =
      FirebaseDatabase.instance.reference();
  List<Rx<MenuItem>> listMenu = <Rx<MenuItem>>[].obs;

  getMenu() {
    try {
      databaseReference.child('menu').once().then((DataSnapshot snapshot) {
        List<dynamic> resultList = snapshot.value;
        for (var i = 0; i < resultList.length; i++) {
          listMenu.add(new MenuItem(
            icon: resultList[i],
            title: resultList[i],
          ).obs);
        }
        print(listMenu.length);
      });
    } catch (Exception) {
      print(Exception);
    }
  }
}
