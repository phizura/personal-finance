import 'package:flutter/material.dart';
import 'package:personal_finance/common/color_extension.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double fontSize;
  final FontWeight fontWeight;
  const PrimaryButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.fontSize = 14,
      this.fontWeight = FontWeight.w600});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 63,
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('assets/images/primary_btn.png')),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  color: TColor.secondary.withOpacity(0.35),
                  blurRadius: 10,
                  offset: const Offset(0, 7))
            ]),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
              color: TColor.primaryText,
              fontSize: fontSize,
              fontWeight: fontWeight),
        ),
      ),
    );
  }
}
