import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.image,
      this.imageColor,
      this.imagebackgroundColor});

  final String image;
  final Color? imageColor, imagebackgroundColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 60, maxWidth: 60),//!
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                width: 60,
                height: 60,
                decoration: ShapeDecoration(
                  shape: const OvalBorder(),
                  color: imagebackgroundColor ?? const Color(0xffFAFAFA),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                        imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
                  ),
                ), //!
              ),
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
        Transform.rotate(
            angle: 180 * 3.14 / 180,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color:
                  imageColor == null ? const Color(0xFF064061) : Colors.white,
            )),
      ],
    );
  }
}
