import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double fontSize;
  final FontWeight fontWeight;
  final String assetButtonSocialIcon;
  final String iconSocial;
  final Color titleColor;
  final Color titleIconColor;
  final Color shadowColor;

  const SocialButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.fontSize = 18,
      this.fontWeight = FontWeight.w600,
      required this.assetButtonSocialIcon,
      required this.iconSocial,
      this.titleColor = Colors.white,
      this.titleIconColor = Colors.white,
      required this.shadowColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(assetButtonSocialIcon)),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  color: shadowColor.withOpacity(0.35),
                  blurRadius: 8,
                  offset: const Offset(0, 4))
            ]),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconSocial,
              width: 20,
              height: 20,
              color: titleIconColor,
              colorBlendMode: BlendMode.srcIn,
            ),
            const SizedBox(
              width: 7,
            ),
            Text(
              title,
              style: TextStyle(
                  color: titleColor,
                  fontSize: fontSize,
                  fontWeight: fontWeight),
            ),
          ],
        ),
      ),
    );
  }
}
