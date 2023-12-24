import 'package:flutter/material.dart';

import '../../constant/app_colors.dart';
import '../../views/people_view.dart';
import '../../views/profile_view.dart';
import '../../views/ticket_view.dart';
import '../../widget/bottom_nav_icon_btn.dart';
import '../constant/app_constant.dart';
import '../constant/app_images.dart';
import '../widget/common_box.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final pageController = PageController();
  int page = 0;

  void _changePage(int index) {
    setState(() {
      page = index;
    });
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 200),
      curve: Curves.linear,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: _changePage,
        controller: pageController,
        children: const [
          HomeView(),
          PeopleView(),
          TicketView(),
          ProfileView(),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(
          25,
          10,
          25,
          MediaQuery.viewPaddingOf(context).bottom + 10,
        ),
        color: AppColors.bottomNavBGColor,
        child: CommonBox(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          color: AppColors.bottomNavColor,
          borderRadius: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomNavIconBtn(
                indexValue: 0,
                currentIndex: page,
                onPageChange: _changePage,
                imagePath: AppImages.icHome,
              ),
              BottomNavIconBtn(
                indexValue: 1,
                currentIndex: page,
                onPageChange: _changePage,
                imagePath: AppImages.icPeople,
              ),
              BottomNavIconBtn(
                indexValue: 2,
                currentIndex: page,
                onPageChange: _changePage,
                imagePath: AppImages.icTicket,
              ),
              BottomNavIconBtn(
                indexValue: 3,
                currentIndex: page,
                onPageChange: _changePage,
                imagePath: AppImages.icProPic,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: kPadding,
        child: Text(
          "Home",
          style: kHeadingTextWhite,
        ),
      ),
    );
  }
}
