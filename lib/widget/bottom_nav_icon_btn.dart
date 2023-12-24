import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;

import '../../constant/app_colors.dart';

class BottomNavIconBtn extends StatelessWidget {
  final int indexValue;
  final int currentIndex;
  final String imagePath;
  final void Function(int) onPageChange;

  const BottomNavIconBtn({
    super.key,
    required this.indexValue,
    required this.currentIndex,
    required this.imagePath,
    required this.onPageChange,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          onPageChange(indexValue);
        },
        highlightColor: AppColors.btnGrad1.withOpacity(0.5),
        splashColor: AppColors.btnGrad1.withOpacity(0.2),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(50),
          topLeft: Radius.circular(50),
          bottomRight: Radius.circular(12),
          bottomLeft: Radius.circular(12),
        ),
        child: Ink(
          padding: const EdgeInsets.only(left: 10, top: 12, right: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              !imagePath.endsWith("svg")
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        imagePath,
                        width: 25,
                        height: 25,
                        fit: BoxFit.cover,
                      ),
                    )
                  : SvgPicture.asset(
                      imagePath,
                      width: 25,
                      height: 25,
                      colorFilter: ColorFilter.mode(
                          indexValue == currentIndex
                              ? AppColors.btnGrad1
                              : AppColors.grey.shade700,
                          BlendMode.srcIn),
                    ),
              const SizedBox(height: 9),
              Container(
                height: 3,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                  color: indexValue == currentIndex
                      ? AppColors.btnGrad1
                      : Colors.transparent,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
