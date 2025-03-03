import 'package:flutter/material.dart';
import 'package:islamic_app/tabs/ahdeath.dart';
import 'package:islamic_app/tabs/quran/quran.dart';
import 'package:islamic_app/tabs/radio.dart';
import 'package:islamic_app/tabs/sebha.dart';

class HomeLayout extends StatefulWidget {
  HomeLayout({
    super.key,
  });

  static const String routeName = 'homeLayout';

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Image.asset(
            "assets/images/main_bg.png",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Scaffold(
            bottomNavigationBar: Theme(
              data: Theme.of(context)
                  .copyWith(canvasColor: Theme.of(context).primaryColor),
              child: BottomNavigationBar(
                  currentIndex: currentIndex,
                  onTap: (index) {
                    currentIndex = index;
                    setState(() {});
                  },
                  items: [
                    BottomNavigationBarItem(
                        icon: ImageIcon(AssetImage("assets/images/quran.png")),
                        label: "Quran"),
                    BottomNavigationBarItem(
                        icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                        label: "Tasbeh"),
                    BottomNavigationBarItem(
                        icon: ImageIcon(AssetImage("assets/images/radio.png")),
                        label: "Radio"),
                    BottomNavigationBarItem(
                        icon: ImageIcon(AssetImage("assets/images/moshaf.png")),
                        label: "Ahaeth"),
                  ]),
            ),
            appBar: AppBar(
              title: Text("Islami",
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
            backgroundColor: Colors.transparent,
            body: taps[currentIndex],
          ),
        ],
      ),
    );
  }

  List<Widget> taps = [
    QuranScreen(),
    SebhaScreen(),
    RadioScreen(),
    AhdeathScreen()
  ];
}
