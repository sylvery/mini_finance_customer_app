import 'package:flutter/material.dart';

class LoansNotification extends StatefulWidget {
  const LoansNotification({super.key});

  @override
  State<LoansNotification> createState() => _LoansNotificationState();
}

class _LoansNotificationState extends State<LoansNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Loans notifications"),
      ),
      body: SingleChildScrollView(
        child: ListView(),
      ),
    );
  }
}
