import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_user_using_api/providers/home_page_provider.dart';
import '../widgets/user_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<HomePageProvider>(context);
    return Scaffold(
      floatingActionButton: ElevatedButton(
          onPressed: () {
            prov.setData();
          },
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
        itemBuilder: (context, index) =>
            Consumer(builder: (context, HomePageProvider provider, child) {
          if (provider.users == null) {
            provider.setData();
            return const CircularProgressIndicator();
          }
          return card(provider.users![0][index]!, provider.users![1][index]!,
              provider.users![2][index]!);
        }),
        itemCount: 5,
      ),
    );
  }
}
