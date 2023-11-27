class User {
  final String username;
  final String avatar;
  final String money;
  User({
    required this.username,
    required this.avatar,
    this.money = '0',
  });
}
