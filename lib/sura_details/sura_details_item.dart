import 'package:flutter/material.dart';

class SuraDetailsItem extends StatelessWidget {
  SuraDetailsItem(this.suraName);

  String suraName;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(suraName,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineLarge),
    );
  }
}
