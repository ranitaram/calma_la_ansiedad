class ChatUser {
  final String uid;
  final String name;
  final String email;
  final String imageUrl;
  late DateTime lastActive;

  ChatUser(
      {required this.uid,
      required this.name,
      required this.email,
      required this.imageUrl,
      required this.lastActive});

  factory ChatUser.fromJson(Map<String, dynamic> _json) {
    return ChatUser(
      uid: _json["uid"],
      name: _json["name"],
      email: _json["email"],
      imageUrl: _json["image"],
      lastActive: _json["last_active"].toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "email": email,
      "name": name,
      "last_active": lastActive,
      "image": imageUrl,
    };
  }

  String lastDayActive() {
    return "${lastActive.month}/${lastActive.day}/${lastActive.year}";
  }

  bool wasRecentlyActive() {
    return DateTime.now().difference(lastActive).inHours < 1;
  }
}
