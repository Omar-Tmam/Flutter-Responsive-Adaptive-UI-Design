import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: const Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: Center(child: SvgPicture.asset(image)),
        ),
        Expanded(child: SizedBox()),
        Icon(
          Icons.keyboard_arrow_right_sharp,
          color: Color(0xFF064060),
        )
      ],
    );
  }
}
