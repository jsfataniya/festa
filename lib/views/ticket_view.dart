import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;

import '../../constant/app_colors.dart';
import '../../constant/app_constant.dart';
import '../../constant/app_images.dart';
import '../../widget/common_button.dart';
import '../../widget/coupon_cliper.dart';
import '../widget/common_box.dart';
import '../widget/icon_text_row.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: kPadding,
        child: Column(
          children: [
            Text(
              "Your tickets ",
              style: kHeadingTextWhite,
            ),
            kSpaceV20,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonButton(
                  label: "Upcoming",
                  onPress: () {},
                ),
                kSpaceH15,
                CommonButton(
                  label: "History",
                  onPress: () {},
                  buttonColor: AppColors.btnColor,
                ),
              ],
            ),
            kSpaceV15,
            ClipPath(
              clipper: CouponClipper(holeRadius: 40),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: CommonBox(
                color: Colors.grey.shade900,
                borderRadius: 25,
                border: Border.all(
                  width: 2,
                  color: Colors.grey.shade800,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: kPadding,
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(AppImages.icProPic),
                          ),
                          kSpaceH15,
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Anuj jain",
                                      style: kTitleTextWhite,
                                    ),
                                    Text(
                                      "22-12-2023",
                                      style: kBodyTextGrey,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "India tour 2023",
                                      style: kBodyTextGrey,
                                    ),
                                    Text(
                                      "10:00 AM - 06:00 PM",
                                      style: kBodyTextGrey,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    CommonBox(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      borderRadius: 10,
                      child: Image.asset(AppImages.icTicketImg),
                    ),
                    kSpaceV15,
                    CommonBox(
                      padding: kPadding,
                      borderRadius: 23,
                      color: Colors.grey.shade800,
                      child: Column(
                        children: [
                          const IconsTextRow(
                            iconPath: AppImages.icLocation,
                            text: "Mumbai Stadium, Mumbai India",
                          ),
                          kSpaceV10,
                          const IconsTextRow(
                            iconPath: AppImages.icClock,
                            text: "31-12-2023, 10:00am - 03:00pm",
                          ),
                          kSpaceV10,
                          Row(
                            children: [
                              const IconsTextRow(
                                iconPath: AppImages.icTicket1,
                                text: "Row: 2",
                              ),
                              kSpaceH20,
                              Text("Seats: 07,08", style: kBodyTextWhite),
                            ],
                          ),
                          kSpaceV10,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconsTextRow(
                                iconPath: AppImages.icTicket1,
                                text: "₹10,000",
                                style: kBodyTextWhite.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              kSpaceH10,
                              Text(
                                "₹15,000",
                                style: kBodyTextGrey.copyWith(
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.grey,
                                  decorationThickness: 2,
                                ),
                              )
                            ],
                          ),
                          kSpaceV15,
                          SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: SvgPicture.asset(
                              fit: BoxFit.fill,
                              AppImages.icBarcode,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            kSpaceV15,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonButton(
                  label: "Download",
                  icon: CupertinoIcons.arrow_down_to_line,
                  isShadow: true,
                  onPress: () {},
                ),
                CommonButton(
                  label: "Share",
                  icon: CupertinoIcons.share,
                  buttonColor: AppColors.btnColor,
                  onPress: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
