import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            width: 1,
            color: Color(0xfff1f1f1),
          ),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16,
          ),
          SizedBox(width: 18),
          Icon(
            Icons.keyboard_arrow_down_sharp,
            color: Color(0xFF064060),
          )
        ],
      ),
    );
  }
}