import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BottomFieldWidget extends HookWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;
  final String helperText;
  const BottomFieldWidget({
    super.key,
    required this.controller,
    this.keyboardType,
    required this.hintText,
    required this.helperText,
  });

  @override
  Widget build(BuildContext context) {
    final focusNode = useFocusNode();

    final clickValue = useState<bool>(false);

    focusNode.addListener(() {
      clickValue.value = focusNode.hasFocus;
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (clickValue.value)
          Text(
            helperText,
            style: TextStyle(
              color: Colors.black.withOpacity(.50),
              fontWeight: FontWeight.w500,
            ),
          ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 38,
          child: TextField(
            focusNode: focusNode,
            onChanged: (value) {
              if (value.isEmpty) {
                clickValue.value = false;
              }
            },
            controller: controller,
            keyboardType: keyboardType,
            cursorHeight: 25,
            cursorWidth: .8,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              enabledBorder: const UnderlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}