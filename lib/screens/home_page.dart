import 'package:flutter/material.dart';
import '../widgets/user_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
          onPressed: () {},
          child: const Icon(
            Icons.refresh,
            size: 45,
          )),
      appBar: AppBar(
        title: const Text('random user',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            color: index.isEven ? Colors.blue : Colors.black,
          );
        },
        itemBuilder: (context, index) => card(),
        itemCount: 6,
      ),
    );
  }
}
