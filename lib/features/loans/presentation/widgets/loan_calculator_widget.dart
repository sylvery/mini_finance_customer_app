import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_finance_customer_app/core/widgets/slideshow_widget.dart';
import 'package:mini_finance_customer_app/features/loans/presentation/pages/loans_new.dart';

class LoanCalculatorWidget extends StatefulWidget {
  const LoanCalculatorWidget({super.key});

  @override
  State<LoanCalculatorWidget> createState() => _LoanCalculatorWidgetState();
}

class _LoanCalculatorWidgetState extends State<LoanCalculatorWidget> {
  var _calculator_loan_amount = 500.0;
  double _calculator_number_fortnights = 5.0;
  var repaymentPerFortnight = 0.0;
  double maxNumberOfFortnights = 35.0;
  int fortnightSliderDivisions = 7;
  double getLoanAmount() {
    return _calculator_loan_amount;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SlideshowWidget(),
        const Text("Loan Calculator", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24, color: Colors.orange)),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Text("K $_calculator_loan_amount", style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
              const Text("Loan Amount"),
              Slider(
                value: _calculator_loan_amount,
                min: 500,
                max: 10000,
                divisions: 95,
                label: "Amount",
                activeColor: Colors.purple,
                onChanged: (value) {
                  setState(() {
                    _calculator_loan_amount = value;
                  });
                },
                onChangeEnd: (value) {
                  setState(() {
                    switch (value) {
                      case <=900:
                        setState(() {
                          maxNumberOfFortnights = 12.0;
                          fortnightSliderDivisions = 12-5;
                          _calculator_number_fortnights = 7;
                        });
                      case <=1900:
                        setState(() {
                          maxNumberOfFortnights = 20.0;
                          fortnightSliderDivisions = 20-5;
                          _calculator_number_fortnights = 15;
                        });
                      case <=3000:
                        setState(() {
                          maxNumberOfFortnights = 26.0;
                          fortnightSliderDivisions = 26-5;
                          _calculator_number_fortnights = 20;
                        });
                      case <=4900:
                        setState(() {
                          maxNumberOfFortnights = 30.0;
                          fortnightSliderDivisions = 30-5;
                          _calculator_number_fortnights = 25;
                        });
                      case <=10000:
                        setState(() {
                          maxNumberOfFortnights = 35.0;
                          fortnightSliderDivisions = 35-5;
                          _calculator_number_fortnights = 30;
                        });
                    }
                    var baseLoanPercentage = 0.15;
                    var loanPercentage = _calculator_number_fortnights == 5 ? baseLoanPercentage : (0.03*(_calculator_number_fortnights-5)) + baseLoanPercentage;
                    repaymentPerFortnight = (_calculator_loan_amount * loanPercentage + _calculator_loan_amount) / _calculator_number_fortnights;
                  });
                },
              ),
              const SizedBox(height: 12),
              Text("Number of Fortnights: $_calculator_number_fortnights"),
              Slider(
                key: const Key("sliderNumFortnights"),
                value: _calculator_number_fortnights,
                min: 5,
                max: maxNumberOfFortnights,
                divisions: fortnightSliderDivisions,
                label: "Fortnights",
                activeColor: Colors.green,
                onChanged: (value) {
                  setState(() {
                    _calculator_number_fortnights = value;
                    value = 5;
                  });
                },
                onChangeEnd: (double value) {
                  setState(() {
                    var baseLoanPercentage = 0.15;
                    var loanPercentage = _calculator_number_fortnights == 5 ? baseLoanPercentage : (0.03*(_calculator_number_fortnights-5)) + baseLoanPercentage;
                    repaymentPerFortnight = (_calculator_loan_amount * loanPercentage + _calculator_loan_amount) / _calculator_number_fortnights;
                  });
                },
              ),
              Text("K $repaymentPerFortnight", style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
              const Text("This amount will be repaid each fortnight for the specified number of fortnights."),
              const SizedBox(height: 18),
            ],
          ),
        ),
        const Card(
          elevation: 4,
          child: Padding(
            padding: EdgeInsets.all(24),
            child:
            Column(
              children: [
                Text("Loan Rules", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),
                SizedBox(height: 12, width: 100),
                Text("1. You can only apply for any amount between K500 and K10,000."),
                Text("2. K10,000 has a maximum repayment of 35 fortnights."),
                Text("3. Each fortnight repayment increments at 3%. Starting at 15% on the 5 fortnights repayment option. So to repay the loan within 7 fortnights, the interest on the loaned amount will be 21%."),
              ],
            ),
          ),
        ),
        const SizedBox(height: 54),
      ],
    );
  }
}
