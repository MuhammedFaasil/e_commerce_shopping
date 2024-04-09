import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customerdetails extends StatelessWidget {
  final String fieldKey;
  final String fieldValue;
  const Customerdetails(
      {super.key, required this.fieldKey, required this.fieldValue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            fieldKey,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            fieldValue,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.grey.shade700),
          )
        ],
      ),
    );
  }
}