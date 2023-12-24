import 'package:flutter/material.dart';

import 'constant/app_colors.dart';
import 'constant/app_constant.dart';
import 'views/home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practical task FESTA',
      debugShowCheckedModeBanner: false,
      navigatorKey: navKey,
      initialRoute: "/",
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.black,
        fontFamily: kFontOutfit,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
