import 'package:flutter/material.dart';

class QuranItem extends StatelessWidget {

  QuranItem({super.key,required this.name});

  String name='';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        name,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
