import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_finance_customer_app/core/widgets/slideshow_widget.dart';
import 'package:mini_finance_customer_app/features/loans/presentation/pages/loans_new.dart';
import 'package:mini_finance_customer_app/features/loans/presentation/widgets/loan_calculator_widget.dart';

class LoansCalculator extends StatefulWidget {
  const LoansCalculator({super.key});

  @override
  State<LoansCalculator> createState() => _LoansCalculatorState();
}

class _LoansCalculatorState extends State<LoansCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Loans Calculator"),
      ),
      body: SingleChildScrollView(
        child: LoanCalculatorWidget(),
      ),
    );
  }
}
