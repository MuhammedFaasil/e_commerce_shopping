import 'package:e_commerce_app/controller/grid_data_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class GridViewWidget extends HookWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedBox = useState<int>(-1);
    return GridView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        mainAxisExtent: 150,
      ),
      itemCount: 8,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
          child: InkWell(
            onTap: () {
              selectedBox.value = index;
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: selectedBox.value == index
                      ? const Color(0xFF17479b)
                      : Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 15, color: Colors.grey.withOpacity(.30))
                  ]),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      listofModels[index].icon,
                      size: 40,
                      color: selectedBox.value == index
                          ? Colors.white
                          : const Color(0xFF17479b),
                    ),
                    Text(
                      listofModels[index].title,
                      style: TextStyle(
                          color: selectedBox.value == index
                              ? Colors.white
                              : const Color(0xFF17479b),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
