import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, this.imageBackground, this.imageColor});
  final String image;
  final Color? imageBackground, imageColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                width: 60,
                height: 60,
                decoration: ShapeDecoration(
                  color: imageBackground ?? const Color(0xFFFAFAFA),
                  shape: OvalBorder(),
                ),
                child: Center(
                    child: SvgPicture.asset(
                  image,
                  colorFilter: ColorFilter.mode(
                      imageColor ?? Color(0xff4EB7F2), BlendMode.srcIn),
                )),
              ),
            ),
          ),
        ),
        Expanded(child: SizedBox()),
        Icon(
          Icons.keyboard_arrow_right_sharp,
          color: imageColor == null ? Color(0xFF064060) : Colors.white,
        )
      ],
    );
  }
}
