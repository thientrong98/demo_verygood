import 'dart:convert';

MenuItem filterChipItemFromJson(String str) =>
    MenuItem.fromJson(json.decode(str));

String filterChipItemToJson(MenuItem data) => json.encode(data.toJson());

class MenuItem {
  String color;
  String icon;
  String title;
  MenuItem({required this.icon, required this.title, required this.color});

  factory MenuItem.fromJson(Map<String, dynamic> json) => MenuItem(
        icon: json["icon"],
        title: json["title"],
        color: json["color"],
      );

  Map<String, dynamic> toJson() => {
        "icon": icon,
        "title": title,
        "color": color,
      };
}
