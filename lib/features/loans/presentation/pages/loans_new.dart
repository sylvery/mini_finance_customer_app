import 'package:flutter/material.dart';
import 'package:mini_finance_customer_app/core/widgets/custom_bottom_navbar.dart';
import 'package:mini_finance_customer_app/features/loans/presentation/widgets/loan_calculator_widget.dart';

class LoansNew extends StatefulWidget {
  const LoansNew({super.key});

  @override
  State<LoansNew> createState() => _LoansNewState();
}

class _LoansNewState extends State<LoansNew> {
  @override
  Widget build(BuildContext context) {
    var _loan_purpose;
    var _loan_customer_signature;
    var _loan_amount;
    var _loan_amount_pva;
    var _loan_num_fortnights;
    var _loan_gross_loan_amount;
    var _loan_gross_salary_deduction;
    var _loan_new_salary_deduction;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("New Loan"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LoanCalculatorWidget(),
            Container(
              child: Column(
                children: [
                  TextField(
                    controller: _loan_purpose,
                  ),
                  Text("Purpose"),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: _loan_amount,
                  ),
                  Text("Amount (K)"),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              child: Column(
                children: [
                  TextField(
                    controller: _loan_amount_pva,
                  ),
                  Text("PVA Amount (K)"),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              child: Column(
                children: [
                  TextField(
                    controller: _loan_num_fortnights,
                  ),
                  Text("# of Fortnights"),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              child: Column(
                children: [
                  TextField(
                    controller: _loan_gross_loan_amount,
                  ),
                  Text("Gross Loan Amount (K)"),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              child: Column(
                children: [
                  TextField(
                    controller: _loan_gross_salary_deduction,
                  ),
                  Text("Gross Salary (K)"),
                  Text("Pay before deduction"),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              child: Column(
                children: [
                  TextField(
                    controller: _loan_new_salary_deduction,
                  ),
                  Text("Net Salary (K)"),
                  Text("Pay after deduction"),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              child: Column(
                children: [
                  TextField(
                    controller: _loan_customer_signature,
                  ),
                  Text("Signature"),
                ],
              ),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('You have to create an account to continue'),
                  ),
                );
              },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("Apply", style: TextStyle(fontSize: 28, letterSpacing: 2, fontWeight: FontWeight.w500, color: Colors.white)),
              )
            )
          ],
        ),
      ),
      // bottomNavigationBar: CustomBottomNavbar(),
    );
  }
}
