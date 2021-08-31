import 'package:flutter/material.dart';

class DotColor extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const DotColor({Key? key, required this.color, this.isSelected = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      padding: EdgeInsets.all(2.5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
