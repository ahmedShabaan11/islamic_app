import 'package:flutter/material.dart';

class SebhaScreen extends StatefulWidget {
  SebhaScreen({
    super.key,
  });

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int count = 0;
  int index = 0;

  List<String> text = ["سبحان الله", "الله اكبر", "الحمد لله"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Image.asset(
                    'assets/images/Frame1.png',
                    width: 200,
                    height: 200,
                  ),

          SizedBox(
            height: 50,
          ),
          Text(
            'عدد التسبيحات ',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 50),
                backgroundColor: Theme.of(context).primaryColor),
            onPressed: () {
              setState(() {
                if (count < 33) {
                  count++;
                } else {
                  count = 0;
                  index++;
                }
                if (index > text.length - 1) {
                  index = 0;
                }
              });
            },
            child: Column(
              children: [Text(count.toString()), Text(text[index])],
            ),
          ),
        ],
      ),
    );
  }
}
