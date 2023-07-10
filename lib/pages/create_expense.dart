import 'package:expense_tracker/controller/create.dart';
import 'package:expense_tracker/models/currency_model.dart';
import 'package:flutter/material.dart';

class CreateExpensePage extends StatefulWidget {
  const CreateExpensePage({super.key});

  @override
  State<CreateExpensePage> createState() => _CreateExpensePageState();
}

class _CreateExpensePageState extends State<CreateExpensePage> {
  late CurrencyListModel selectedItems;

  @override
  void initState() {
    super.initState();
    final CreateExpense expense = CreateExpense();
    selectedItems = expense.getAllCurrency();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("How much did you use?"),
        centerTitle: false,
        actions: [
          IconButton(
            iconSize: 30,
            onPressed: () {},
            icon: const Icon(
              Icons.add_rounded,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text("100,0000"),
            Divider(
              indent: 24,
              endIndent: 24,
            ),
            Expanded(
              child: Wrap(
                spacing: 12,
                children: [
                  ChoiceChip(
                    selected: true,
                    label: Text("10000"),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                  Chip(label: Text("5000")),
                  Chip(label: Text("1000")),
                ],
              ),
            ),
            Divider(
              indent: 24,
              endIndent: 24,
            ),
            Expanded(
              child: Wrap(
                spacing: 12,
                children: [
                  Chip(label: Text("500")),
                  Chip(label: Text("300")),
                  Chip(label: Text("200")),
                  Chip(label: Text("100")),
                  Chip(label: Text("50")),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: () {}, label: Text("Done")),
    );
  }
}
