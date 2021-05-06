import 'dart:convert';

MenuItem filterChipItemFromJson(String str) =>
    MenuItem.fromJson(json.decode(str));

String filterChipItemToJson(MenuItem data) => json.encode(data.toJson());

class MenuItem {
  MenuItem({
    required this.icon,
    required this.title,
  });

  String icon;
  String title;

  factory MenuItem.fromJson(Map<String, dynamic> json) => MenuItem(
        icon: json["icon"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "icon": icon,
        "title": title,
      };
}
