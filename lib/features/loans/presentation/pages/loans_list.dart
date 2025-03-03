import 'package:flutter/material.dart';

class LoansList extends StatefulWidget {
  const LoansList({super.key});

  @override
  State<LoansList> createState() => _LoansListState();
}

class _LoansListState extends State<LoansList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("List of Loans"),
      ),
      body: SingleChildScrollView(
        child: ListView(),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), //
    );
  }
}
