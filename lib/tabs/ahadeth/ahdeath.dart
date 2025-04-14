import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/my_theme.dart';
import 'package:islamic_app/tabs/ahadeth/ahdeth_item.dart';

class AhdeathScreen extends StatefulWidget {
  AhdeathScreen({super.key});

  @override
  State<AhdeathScreen> createState() => _AhdeathScreenState();
}

class _AhdeathScreenState extends State<AhdeathScreen> {
  List<AhadethModel> Ahadeeth = [];

  @override
  Widget build(BuildContext context) {
    if (Ahadeeth.isEmpty) {
      LoadHadaethFile();
    }
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
        Ahadeeth.length == 0
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return AhdethItem(Ahadeeth[index]);
                    },
                    separatorBuilder: (context, index) {
                      return Container(
                        height: 2,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        color: MyThemeData.primaryColor,
                      );
                    },
                    itemCount: Ahadeeth.length))
      ],
    );
  }

  void LoadHadaethFile() async {
    String content = await rootBundle.loadString('assets/file/ahadeth.txt');
    List<String> hadeth = content.trim().split("#");
    for (int i = 0; i < hadeth.length; i++) {
      String allHadethText = hadeth[i];
      List<String> lines = allHadethText.trim().split('\n');
      String title = lines[0];
      lines.removeAt(0);
      AhadethModel ahadethModel = AhadethModel(title, lines);
      Ahadeeth.add(ahadethModel);
      setState(() {});
    }
  }
}

class AhadethModel {
  String title;
  List<String> content = [];

  AhadethModel(this.title, this.content);
}
