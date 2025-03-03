import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mini_finance_customer_app/core/widgets/apply_for_loan_btn_widget.dart';

class ServicePromiseWidget extends StatelessWidget {
  const ServicePromiseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Our Service Promise",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: Colors.orange)),
        SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/businessman.png'),
              fit: BoxFit.fitWidth, // Adjust fit as needed (cover, fill, etc.)
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                onPressed: null,
                icon: Icon(Icons.check),
                label: Text(
                  "We are about helping public servants with personal financial problems and thats our business",
                  style: TextStyle(overflow: TextOverflow.clip),
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * .5),
                child: TextButton.icon(
                    onPressed: null,
                    icon: Icon(Icons.check),
                    label: Text("We repond to all clients needs within 24 hours",
                      style: TextStyle(overflow: TextOverflow.clip),
                    )),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * .5),
                child: Column(
                  children: [
                    TextButton.icon(
                        onPressed: null,
                        icon: Icon(Icons.check),
                        label: Text("We will treat all clients with respect, professionalism and flexibility",
                          style: TextStyle(overflow: TextOverflow.clip),
                        )),
                  ],
                ),
              ),
              Center(child: ApplyForLoanBtnWidget())
            ],
          ),
        ),
      ],
    );
  }
}
