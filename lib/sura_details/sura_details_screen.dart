import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/sura_details/sura_details_item.dart';

class SuraDetailsScreen extends StatefulWidget {
  SuraDetailsScreen({super.key});

  static const String routeName = "sura_details";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var suraDetailsArgs =
        ModalRoute.of(context)!.settings.arguments as SuraDetailsModel;
    loadFile(suraDetailsArgs.index);
    print(verses);
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
              title: Text("${suraDetailsArgs.name}",
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
            body: verses.length == 0
                ? Center(child: CircularProgressIndicator())
                : Container(
                    child: ListView.builder(
                        itemCount: verses.length,
                        itemBuilder: (context, index) {
                          return SuraDetailsItem(verses[index]);
                        })),
          ),
        ],
      ),
    );
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString("assets/file/${index + 1}.txt");
    List<String> lines = content.split('\n');
    if (verses.isNotEmpty) {
      return;
    }
    verses = lines;

    // verses.addAll(lines);
    setState(() {});
    // print(verses);
  }
}

class SuraDetailsModel {
  String name;
  int index;

  SuraDetailsModel(this.name, this.index);
}
