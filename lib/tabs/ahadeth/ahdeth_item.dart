import 'package:flutter/material.dart';
import 'package:islamic_app/sura_details/sura_details_screen.dart';
import 'package:islamic_app/tabs/ahadeth/ahadeth_details.dart';
import 'package:islamic_app/tabs/ahadeth/ahdeath.dart';

class AhdethItem extends StatelessWidget {

  AhdethItem(this.ahadethModel);
  AhadethModel ahadethModel;
  @override
  Widget build(BuildContext context) {
     return
    InkWell(onTap: (){

      Navigator.pushNamed(context, AhadethDetails.routeName,arguments:ahadethModel );
  },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            "${ahadethModel.title}",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
     // ),
      ));
  }
}
