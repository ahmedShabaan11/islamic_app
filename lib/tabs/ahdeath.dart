import 'package:flutter/material.dart';
import 'package:islamic_app/my_theme.dart';

class AhdeathScreen extends StatelessWidget {
  AhdeathScreen({super.key});

  List<String> ahadeeth = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/basmala.png"),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Text(
          "Ahadeeth ",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        ListView.separated(
            itemBuilder: (context, index) {
              return Text("data");
            },
            separatorBuilder: (context, index) {
              return Container(
                height: 1,
                margin: EdgeInsets.symmetric(horizontal: 50),
                color: MyThemeData.primaryColor,
              );
            },
            itemCount: ahadeeth.length)
      ],
    );
  }
}
