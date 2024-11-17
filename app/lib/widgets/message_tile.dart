import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  final dynamic message;

  const MessageTile({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(message['userName'] ?? 'Anonymous'),
      subtitle: Text(message['message'] ?? 'No message'),
      trailing: Text(
        (message['timestamp'] as Timestamp?)?.toDate().toString() ?? '',
        style: const TextStyle(fontSize: 10),
      ),
    );
  }
}
