import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  static const String routeName = 'homeLayout';

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
            appBar: AppBar(

              title: Text("Islami"),
              centerTitle: true,
            ),
            backgroundColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
