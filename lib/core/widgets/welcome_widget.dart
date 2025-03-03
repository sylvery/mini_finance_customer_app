import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_finance_customer_app/core/widgets/user_login_btn_widget.dart';

import 'apply_for_loan_btn_widget.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Text("Lesfordlati Mini Finance",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.orange)),
            SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.all(14),
              child: Text(
                  "Lesfordlati is a local finance business that is committed to supporting the financial needs of individuals and businesses in the community. Our mission is to provide accessible, affordable, and reliable financial services that meet the unique needs of our clients.",
                  style: TextStyle(color: Colors.blueGrey)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ApplyForLoanBtnWidget(),
                SizedBox(width: 10),
                UserLoginBtnWidget(),
              ],
            ),
          ],
        )
    )
    ;
  }
}
