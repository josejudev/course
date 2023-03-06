import 'package:cloud_firestore/cloud_firestore.dart';

class Users {
  final String username;
  final String email;

  Users({
    required this.username,
    required this.email,
  });

  factory Users.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
  ) {
    final data = snapshot.data();
    return Users(
        username: data?['username'],
        email: data?['email']
        );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (username != null) "username": username,
      if (email != null) "email": email,
    };
  }
}
