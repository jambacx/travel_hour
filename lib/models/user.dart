import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String uid;
  final String name;
  final String email;
  final String imageUrl;
  final String joiningDate;
  final List<dynamic> lovedBlogs;
  final List<dynamic> lovedPlaces;
  final List<dynamic> bookmarkedBlogs;
  final List<dynamic> bookmarkedPlaces;

  UserModel({
    required this.uid,
    required this.name,
    required this.email,
    required this.imageUrl,
    required this.joiningDate,
    required this.lovedBlogs,
    required this.lovedPlaces,
    required this.bookmarkedBlogs,
    required this.bookmarkedPlaces,
  });

  factory UserModel.fromFirestore(DocumentSnapshot snapshot) {
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    return UserModel(
      uid: data['uid'] ?? '',
      name: data['name'] ?? '',
      email: data['email'] ?? '',
      imageUrl: data['image url'] ?? '',
      joiningDate: data['joining date'] ?? '',
      lovedBlogs: data['loved blogs'] ?? [],
      lovedPlaces: data['loved places'] ?? [],
      bookmarkedBlogs: data['bookmarked blogs'] ?? [],
      bookmarkedPlaces: data['bookmarked places'] ?? [],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
      'image url': imageUrl,
      'joining date': joiningDate,
      'loved blogs': lovedBlogs,
      'loved places': lovedPlaces,
      'bookmarked blogs': bookmarkedBlogs,
      'bookmarked places': bookmarkedPlaces,
    };
  }
}

