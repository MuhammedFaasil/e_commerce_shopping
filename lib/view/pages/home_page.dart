import 'package:e_commerce_app/view/widgets/bottombar_widget.dart';
import 'package:e_commerce_app/view/widgets/grid_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 90,
          leading: const Padding(
            padding: EdgeInsets.only(left: 24),
            child: CircleAvatar(
              backgroundColor: Colors.black,
            ),
          ),
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.sort))],
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [GridViewWidget()],
            ),
          ),
        ),
        bottomNavigationBar:const BottomNavigationWidget());
  }
}
