import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User(
      {required this.id,
      required this.username,
      required this.createdAt,
      required this.avatar,
      required this.phone,
      required this.isAdmin});

  final String id;
  final String username;
  final DateTime createdAt;
  final String avatar;
  final String phone;
  final bool isAdmin;

  @override
  List<Object> get props => [id, username, createdAt, avatar, phone, isAdmin];

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        username: json['username'],
        createdAt: json['createdAt'],
        avatar: json['avatar'],
        phone: json['phone'],
        isAdmin: json['isAdmin']);
  }
}
