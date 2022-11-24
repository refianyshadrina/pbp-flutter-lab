import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/displayBudget.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/myWatchListPage.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(children: [
      ListTile(
        title: const Text('counter_7'),
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const MyHomePage()),
          );
        },
      ),
      ListTile(
          title: const Text('Form Budget'),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MyFormPage()),
            );
          }),
      ListTile(
          title: const Text('Budget Display'),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const displayBudget()),
            );
          }),
      ListTile(
        title: const Text('Watch List'),
        onTap: () {
          // Route menu ke halaman utama
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyWatchList()),
          );
        },
      ),
    ]));
  }
}
