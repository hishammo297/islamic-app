import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic/modules/hadeth/hadeth_details_view.dart';
class HadethView extends StatefulWidget {
  const HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    if(dataList.isEmpty) loadHadethData();
    return Column(
      children: [
        Image.asset(
            "assets/images/hadith_header.png",
          scale: 3,
        ),
        const Divider(),
        Text(
            "الاحاديث",
          style: theme.textTheme.bodyMedium,
        ),
        const Divider(),
        Expanded(
          child: ListView.builder(itemBuilder: (context, index) => InkWell(
            onTap: (){
              Navigator.pushNamed(
                  context,
                  HadethDetailsView.routeName,
                  arguments: dataList[index],
              );

            },
            child : Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              textAlign: TextAlign.center,
              dataList[index].title,
            ),
          ),
    ),
            itemCount: dataList.length,

        ),
    ),
    ],
    );
  }

  List<HadethData> dataList = [];

   Future <void> loadHadethData() async{
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadethDataList = content.split("#");
    for( int i = 0; i < allHadethDataList.length; i++){
      String singleHadeth = allHadethDataList[i].trim();

     int titleLength =  singleHadeth.indexOf("/n");

    String title = singleHadeth.substring(0, titleLength);
    String body = singleHadeth.substring(titleLength + 1);

      HadethData hadethData = HadethData(title: title, body: body,);

      dataList.add(hadethData);

     print(body);
  }
}
}
class HadethData{
  final String title;
  final String body;

  HadethData({
    required this.title,
    required this.body,
  });
}