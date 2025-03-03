import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_finance_customer_app/features/customer/presentation/pages/static_signup_page.dart';
import 'package:mini_finance_customer_app/features/loans/presentation/pages/loans_list.dart';
import 'package:mini_finance_customer_app/features/loans/presentation/pages/loans_new.dart';
import 'package:mini_finance_customer_app/features/loans/presentation/pages/loans_notifications.dart';
import 'package:mini_finance_customer_app/main.dart';

class CustomBottomNavbar extends StatefulWidget {
  const CustomBottomNavbar({super.key});

  @override
  State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoansNew()),
        );
      }
      if (index == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoansNotification()),
        );
      }
      if (index == 2) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage()),
        );
      }
      if (index == 3) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoansList()),
        );
      }
      if (index == 4) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StaticSignupPage()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.calculate, semanticLabel: "Calculator", color: Colors.blueGrey,),
          label: "Calculator",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications, semanticLabel: "Notifications", color: Colors.blueGrey,),
          label: "Notifications",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home, semanticLabel: "Home", color: Colors.green),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history, semanticLabel: "History", color: Colors.blueGrey,),
          label: "History",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, semanticLabel: "User", color: Colors.blueGrey,),
          label: "User",
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      backgroundColor: Colors.black,
      fixedColor: Colors.blue,
    );
  }
}
