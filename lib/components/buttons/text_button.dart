import 'package:flutter/material.dart';

class SmaTextButton extends StatelessWidget {
  const SmaTextButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.backgroundColor});

  final String text;
  final Color? backgroundColor;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
