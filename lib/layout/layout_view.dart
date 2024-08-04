import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:islamic/modules/hadeth/hadeth_view.dart';
import 'package:islamic/modules/quran/quran_view.dart';
import 'package:islamic/modules/radio/radia_view.dart';
import 'package:islamic/modules/settings/settings_view.dart';
import 'package:islamic/modules/tasbeh/tasbeh_view.dart';

class LayoutView extends StatefulWidget {
  static const String routName = "Layout";

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}
class _LayoutViewState extends State<LayoutView> {
  int selectedIndex = 0;
  List<Widget> screensList = [
    QuranView(),
    SettingsView(),
    HadethView(),
    TasbehView(),
    RadioView(),

  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/header.png"),
          fit: BoxFit.cover
        ),
      ),


      child: Scaffold(
        appBar: AppBar(
          title: Text("اسلامي"),
        ),
        body: screensList[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent,
              currentIndex: selectedIndex,
              onTap: (value){
               selectedIndex = value;
               setState(() {});
              },
              items: const[
                BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/quran.png"),), label: "quran"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: "Settings"),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/hadeth.png"),), label: "hadeth"),
                BottomNavigationBarItem(icon:  ImageIcon(AssetImage("assets/images/sebha_blue.png"),), label: "tasbeh"),
                BottomNavigationBarItem(icon:  ImageIcon(AssetImage("assets/images/radio_blue.png"),), label: "radio"),


              ],
            ),
          ),
    );


  }
}
