import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_finance_customer_app/features/loans/presentation/pages/loans_new.dart';

class ApplyForLoanBtnWidget extends StatelessWidget {
  const ApplyForLoanBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        TextButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoansNew()),
            ),
            style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all(Colors.green[700]),
              shape:
              MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    10), // Adjust corner radius as desired
              )),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Text("Apply for loan",
                  style: TextStyle(
                      fontSize: 14,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w300,
                      color: Colors.white)),
            )
        ),
      ],
    );
  }
}
