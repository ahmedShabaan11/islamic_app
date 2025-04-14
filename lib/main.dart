import 'package:flutter/material.dart';
import 'package:islamic_app/home_layout.dart';
import 'package:islamic_app/my_theme.dart';
import 'package:islamic_app/sura_details/sura_details_screen.dart';
import 'package:islamic_app/tabs/ahadeth/ahadeth_details.dart';
import 'package:islamic_app/tabs/ahadeth/ahdeath.dart';


main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeLayout.routeName,
      routes: {
        SuraDetailsScreen.routeName: (c) => SuraDetailsScreen(),
        HomeLayout.routeName: (c) => HomeLayout(),
        AhadethDetails.routeName: (c) =>AhadethDetails(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}
