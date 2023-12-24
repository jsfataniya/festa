import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../constant/app_constant.dart';

class CommonButton extends StatelessWidget {
  final String label;
  final Color? labelColor;
  final Color? buttonColor;
  final Function()? onPress;
  final bool isShadow;
  final IconData? icon;

  const CommonButton({
    required this.label,
    this.onPress,
    this.labelColor,
    this.buttonColor,
    this.isShadow = false,
    Key? key,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(10.0),
        gradient: buttonColor != null
            ? null
            : const LinearGradient(
                colors: [AppColors.btnGrad1, AppColors.btnGrad2],
                stops: [0.25, 0.75],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
        boxShadow: isShadow
            ? [
                BoxShadow(
                  blurRadius: 6,
                  spreadRadius: 2,
                  color: buttonColor ?? AppColors.btnGrad1.withOpacity(0.4),
                )
              ]
            : null,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPress,
          splashColor: Colors.white.withOpacity(0.150),
          highlightColor: Colors.white.withOpacity(0.150),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 6),
            child: Row(
              children: [
                if (icon != null) ...[
                  Icon(
                    icon,
                    color: Colors.white,
                  ),
                  kSpaceH10,
                ],
                Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: labelColor ?? Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
