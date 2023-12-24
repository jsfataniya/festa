import 'package:flutter/material.dart';

import '../../main.dart';

const kFontOutfit = 'Outfit';
const kSpaceV20 = SizedBox(height: 20);
const kSpaceH20 = SizedBox(width: 20);
const kSpaceV10 = SizedBox(height: 10);
const kSpaceV15 = SizedBox(height: 15);
const kSpaceH10 = SizedBox(width: 10);
const kSpaceH15 = SizedBox(width: 15);
const kPadding = EdgeInsets.all(15);
const kPadding10 = EdgeInsets.all(10);
final kBodyTextGrey = Theme.of(navKey.currentContext!)
    .textTheme
    .bodyMedium!
    .copyWith(color: Colors.grey);
final kBodyTextWhite = Theme.of(navKey.currentContext!)
    .textTheme
    .bodyMedium!
    .copyWith(color: Colors.white);
final kTitleTextWhite = Theme.of(navKey.currentContext!)
    .textTheme
    .titleLarge!
    .copyWith(color: Colors.white);
final kHeadingTextWhite = Theme.of(navKey.currentContext!)
    .textTheme
    .headlineLarge!
    .copyWith(color: Colors.white, fontWeight: FontWeight.w500);
