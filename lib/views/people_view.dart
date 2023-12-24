import 'package:flutter/material.dart';

import '../constant/app_constant.dart';

class PeopleView extends StatelessWidget {
  const PeopleView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: kPadding,
        child: Text(
          "People",
          style: kHeadingTextWhite,
        ),
      ),
    );
  }
}
