import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_finance_customer_app/core/widgets/user_login_btn_widget.dart';

class StaticSignupPage extends StatelessWidget {
  const StaticSignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sign Up"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Tell us more about yourself"),
            TextField(),
            Text("fullname"),
            TextField(),
            Text("gender"),
            TextField(),
            Text("date of birth"),
            TextField(),
            Text("Residental Address"),
            TextField(),
            Text("Employer Name"),
            TextField(),
            Text("Position/Title"),
            TextButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => StaticSignupPage()),
                ),
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(Colors.orange[700]),
                  shape:
                  MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10), // Adjust corner radius as desired
                  )),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text("Sign Up",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w300,
                          color: Colors.white)),
                )
            ),
          ],
        ),
      ),
    );
  }
}
