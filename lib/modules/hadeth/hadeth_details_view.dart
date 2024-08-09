import 'package:flutter/material.dart';
import 'package:islamic/modules/hadeth/hadeth_view.dart';
class HadethDetailsView extends StatelessWidget {

  static const String routeName = "hadethDetails";
  const HadethDetailsView({super.key});

  @override
  Widget build(BuildContext context) {

    var data = ModalRoute.of(context)?.settings.arguments as HadethData;
    var theme = Theme.of(context);


    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/bg2_light.png"),
            fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("اسلامي"),
        ),
        body: Container(
          margin: const EdgeInsets.only(
            top: 20,
            left: 30,
            right: 30,
            bottom: 80,
          ),
          padding: const EdgeInsets.only(
            top: 20,
            left: 30,
            right: 30,
            bottom: 20,
          ),
          decoration:  BoxDecoration(
              color: Color(0xFFF8F8F8).withOpacity(0.85),
              borderRadius: BorderRadius.circular(12.0)
          ),
          child: Column(
            children: [
              Text(
                data.title,
                style: theme.textTheme.bodyMedium,
              ),
              const Divider(),
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) => Text(
                  data.body,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall?.copyWith(height: 1.8),
                ),
                  itemCount: 6,
                ),
              ),

              //Text(
              //  content,
              //  textAlign: TextAlign.center,
              //  style: theme.textTheme.bodySmall?.copyWith(
              //  height: 1.8
              // ),
              //)
            ],
          ),
        ),
      ),
    );
  }
}
