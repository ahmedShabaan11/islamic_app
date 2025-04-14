import 'package:flutter/material.dart';
import 'package:islamic_app/tabs/ahadeth/ahdeath.dart';

class AhadethDetails extends StatelessWidget {
  AhadethDetails();

  static const String routeName = "ahadeth";

  @override
  Widget build(BuildContext context) {
    AhadethModel model =
        ModalRoute.of(context)!.settings.arguments as AhadethModel;
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
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                title: Text("${model.title}",
                    style: Theme.of(context).textTheme.headlineSmall),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${model.content}",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
