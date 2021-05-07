class HotNewsModel {
  final String title;
  final String subtitle;
  final String url;

  HotNewsModel(this.title, this.subtitle, this.url);

  HotNewsModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        subtitle = json['subtitle'],
        url = json['url'];

  Map<String, dynamic> toJson() => {
        'title': title,
        'subtitle': subtitle,
        'url': url,
      };
}
