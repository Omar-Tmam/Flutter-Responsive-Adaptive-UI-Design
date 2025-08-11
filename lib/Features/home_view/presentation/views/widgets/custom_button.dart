import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      required this.text});
  final Color backgroundColor, textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            side: BorderSide(width: 2, color: Color(0xfff6f6f6)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 0,
            backgroundColor: backgroundColor,
          ),
          onPressed: () {},
          child: Text(
            text,
            style: AppStyles.styleSemiBold18(context).copyWith(color: textColor),
          )),
    );
  }
}
