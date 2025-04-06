import 'package:flutter/material.dart';
import 'package:islamic_app/sura_details/sura_details_screen.dart';

class QuranItem extends StatelessWidget {

  QuranItem({super.key,required this.name,required this.index});
int index;
  String name='';
  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){

      Navigator.pushNamed(context, "sura_details",arguments: SuraDetailsModel(name, index));
    },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          name,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
