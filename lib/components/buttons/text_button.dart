import 'package:flutter/material.dart';
import 'package:smarting_ui_component_library/smarting_ui_component_library.dart';

class SmaTextButton extends StatelessWidget {
  const SmaTextButton({
    super.key,
    required this.text,
    required this.onTap,
    this.backgroundColor,
    this.textColor,
    this.fontSize,
    this.fontFamily,
    this.fontWeight,
    this.textStyle,
  });

  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final TextStyle? textStyle;
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
          child: Text(
            text,
            style: textStyle ??
                SmaTextStyles.body.copyWith(
                  color: textColor ?? Colors.black,
                  fontSize: fontSize,
                  fontFamily: fontFamily,
                  fontWeight: fontWeight,
                ),
          )),
    );
  }
}
