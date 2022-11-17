import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/displayBudget.dart';
import 'package:counter_7/form.dart';

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
          })
    ]));
  }
}
