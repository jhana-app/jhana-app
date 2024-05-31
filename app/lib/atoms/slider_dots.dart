import 'package:flutter/material.dart';

class SliderDots extends StatelessWidget {
  final int item;
  final int itemsTotal;

  const SliderDots({
    super.key,
    required this.item,
    required this.itemsTotal,
  });

  @override
  Widget build(BuildContext context) {
    final itemsList = List<int>.generate(itemsTotal, (i) => i);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: itemsList.map((i) {
        return Container(
          width: 16.0,
          height: 16.0,
          margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 6.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: i == item
                ? const Color.fromRGBO(217, 217, 217, 1)
                : const Color.fromRGBO(217, 217, 217, 0.4),
          ),
        );
      }).toList(),
    );
  }
}
