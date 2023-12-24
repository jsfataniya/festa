import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;

import '../constant/app_constant.dart';

class IconsTextRow extends StatelessWidget {
  final String iconPath;
  final String text;
  final TextStyle? style;

  const IconsTextRow({
    required this.iconPath,
    required this.text,
    this.style,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          iconPath,
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          height: 20,
          width: 20,
        ),
        kSpaceH10,
        Text(text, style: style ?? kBodyTextWhite),
      ],
    );
  }
}
