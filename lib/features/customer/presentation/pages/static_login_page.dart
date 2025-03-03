import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_finance_customer_app/core/widgets/user_login_btn_widget.dart';
import 'package:mini_finance_customer_app/features/customer/presentation/pages/static_signup_page.dart';
import 'package:mini_finance_customer_app/features/loans/presentation/pages/loans_new.dart';

class StaticLoginPage extends StatelessWidget {
  const StaticLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sign In"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(36,16,36,12),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.width/4),
              Text("enter your login credentials below"),
              SizedBox(height: 16),
              TextField(),
              Text("username"),
              SizedBox(height: 16),
              TextField(),
              Text("password"),
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
                    child: Text("Sign In",
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w300,
                            color: Colors.white)),
                  )
              ),
              SizedBox(height: MediaQuery.of(context).size.width/4),
              Text("you do not have an account? no worries! signing up is a breeze. tap below to get started", style: TextStyle(overflow: TextOverflow.clip),),
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
      ),
    );
  }
}
