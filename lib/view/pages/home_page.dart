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
          toolbarHeight: 80,
          titleSpacing: 25,
          title: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                    image: AssetImage(
                      'asset/images/Max-R_Headshot (1).jpg',
                    ),
                    fit: BoxFit.cover)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: SizedBox(
                height: 30,
                child: Image.asset(
                  'asset/icons/menu-bar-icon.png',
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [HomeGridViewWidget()],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavigationWidget());
  }
}
