import 'package:e_commerce_app/view/widgets/bottombar_widget.dart';
import 'package:flutter/material.dart';

class UnderConstructionWidget extends StatelessWidget {
  const UnderConstructionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Under Construction'),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
