import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  final String name;
  final void Function()? onTap;
  final Color? color;
  const CardComponent(
    this.name, {
    Key? key,
    this.onTap,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(20),
        color: color ?? Colors.grey[300],
        child: Text(
          name,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
