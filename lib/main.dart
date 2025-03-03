import 'package:flutter/material.dart';
import 'package:mini_finance_customer_app/core/widgets/apply_for_loan_btn_widget.dart';
import 'package:mini_finance_customer_app/core/widgets/custom_bottom_navbar.dart';
import 'package:mini_finance_customer_app/core/widgets/service_promise_widget.dart';
import 'package:mini_finance_customer_app/core/widgets/slideshow_widget.dart';
import 'package:mini_finance_customer_app/core/widgets/welcome_widget.dart';
import 'package:mini_finance_customer_app/features/loans/presentation/pages/loans_calculator.dart';
import 'package:mini_finance_customer_app/features/loans/presentation/pages/loans_list.dart';
import 'package:mini_finance_customer_app/features/loans/presentation/pages/loans_new.dart';

void main() {
  runApp(const CustomerApp());
}

class CustomerApp extends StatelessWidget {
  const CustomerApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lesfordlati Mini Finance',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreenAccent),
        useMaterial3: true,
        fontFamily: 'Ubuntu',
        // fontFamilyFallback: ["Arial"],
      ),
      // home: LoansList(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Lesfordlati Mini Finance"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SlideshowWidget(),
            SizedBox(height: 4),
            WelcomeWidget(),
            SizedBox(height: MediaQuery.of(context).size.width/4),
            ServicePromiseWidget(),
            SizedBox(height: MediaQuery.of(context).size.width/2),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavbar(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(builder: (context) => LoansNew()),
      //   ),
      //   tooltip: 'New Loan',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
