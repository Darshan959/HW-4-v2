import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  final dynamic message;

  const MessageTile({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
          const Icon(Icons.account_circle, size: 40, color: Colors.blueGrey),
      title: Text(
        message['userName'] ?? 'Anonymous',
        style:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      subtitle: Text(message['message'] ?? 'No message'),
      trailing: Text(
        (message['timestamp'] as Timestamp?)?.toDate().toString() ?? '',
        style: const TextStyle(fontSize: 10, color: Colors.grey),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      tileColor: Colors.grey[100],
    );
  }
}
