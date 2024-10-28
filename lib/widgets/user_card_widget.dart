import 'package:flutter/material.dart';

Widget card() {
  return Card(
    elevation: 10,
    child: Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage('url'),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('data', style: TextStyle(fontSize: 20)),
                Text('data', style: TextStyle(fontSize: 20))
              ],
            ),
          )
        ],
      ),
    ),
  );
}
