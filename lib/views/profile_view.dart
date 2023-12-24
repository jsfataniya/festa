import 'package:flutter/material.dart';

import '../../constant/app_images.dart';
import '../../widget/common_box.dart';
import '../../widget/icon_text_row.dart';
import '../constant/app_constant.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: kPadding,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Profile",
                style: kHeadingTextWhite,
              ),
            ),
            kSpaceV15,
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(AppImages.icProPic),
            ),
            kSpaceV10,
            Text(
              "Anuj jain",
              style: kTitleTextWhite,
            ),
            kSpaceV15,
            CommonBox(
              padding: kPadding10,
              borderRadius: 10,
              color: Colors.grey.shade900,
              child: Column(
                children: [
                  IconsTextRow(
                    iconPath: AppImages.icEmail,
                    style: kBodyTextGrey,
                    text: 'anujjain@email.com',
                  ),
                  kSpaceV10,
                  IconsTextRow(
                    iconPath: AppImages.icPhone,
                    style: kBodyTextGrey,
                    text: '+91 9887766554',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
