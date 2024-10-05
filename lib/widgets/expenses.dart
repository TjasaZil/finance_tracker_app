import 'package:finance_tracker_app/widgets/expenses_list.dart';
import 'package:finance_tracker_app/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'flutter course',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'cinema',
        amount: 15.99,
        date: DateTime.now(),
        category: Category.leasure),
    Expense(
        title: 'burger',
        amount: 10.99,
        date: DateTime.now(),
        category: Category.food),
  ];

  @override
  Widget build(context) {
    return Scaffold(
        body: Column(
      children: [
        const Text('chart'),
        Expanded(child: ExpensesList(expenses: _registeredExpenses))
      ],
    ));
  }
}
