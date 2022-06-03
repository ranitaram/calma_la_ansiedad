class AppNotiication {
  final String title, body, type;
  final dynamic content;

  AppNotiication({
    required this.title,
    required this.body,
    required this.type,
    required this.content,
  });
}

class AppNotificationsTypes {
  static const PROMO = "PROMO";
  static const CHAT = "CHAT";
}
