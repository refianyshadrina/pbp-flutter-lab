import 'package:counter_7/drawer.dart';
import 'package:counter_7/data_budget.dart';
import 'package:flutter/material.dart';

class displayBudget extends StatefulWidget {
  const displayBudget({super.key});

  @override
  State<displayBudget> createState() => _displayBudgetState();
}

class _displayBudgetState extends State<displayBudget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),
      drawer: const MyDrawer(),
      body: ListView.builder(
        itemCount: data_budget.budgets.length,
        itemBuilder: (context, i) {
          return Card(
              child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data_budget.budgets[i].judul,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  data_budget.budgets[i].jenis,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  data_budget.budgets[i].nominal.toString(),
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  data_budget.budgets[i].date.toString(),
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ));
        },
      ),
    );
  }
}
