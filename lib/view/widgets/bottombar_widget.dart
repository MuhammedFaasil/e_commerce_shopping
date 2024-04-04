import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 10,
          color: Colors.grey.withOpacity(.60),
        ),
      ]),
      child: BottomNavigationBar(
          selectedItemColor: const Color(0xFF17479b),
          iconSize: 30,
          unselectedItemColor: const Color(0xFF17479b).withOpacity(.60),
          selectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
          unselectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.addchart_sharp), label: 'New Order'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.reset_tv_rounded), label: 'Retrn Order'),
            BottomNavigationBarItem(
                icon: Icon(Icons.groups_3_outlined), label: 'Customers'),
          ]),
    );
  }
}
