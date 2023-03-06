import 'package:cloud_firestore/cloud_firestore.dart';


class Tasks {
  final String title;
  final String description;

  Tasks({
    required this.title, required this.description
    });

    factory Tasks.fromFirestore(DocumentSnapshot<Map<String, dynamic>> snapshot)
    {
      final data = snapshot.data();
      return Tasks(
        title: data?['title'],
        description: data?['description'],
      );
    }

      Map<String, dynamic> toFirestore() {
    return {
      if (title != null) "title": title,
      if (description != null) "description": description,
    };
  }

    
}
