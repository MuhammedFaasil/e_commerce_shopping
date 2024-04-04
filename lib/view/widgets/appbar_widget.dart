import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  const AppBarWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 75,
      leading: IconButton(
          onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new)),
      title: Text(
        title,
        style: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.sort))],
    );
  }
}
