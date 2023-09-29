import 'package:flutter/material.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/tabs/hadeth.dart';
import 'package:islami/tabs/quran.dart';
import 'package:islami/tabs/radio.dart';
import 'package:islami/tabs/sebha.dart';
import 'package:islami/tabs/settings.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/default_bg.png',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
            appBar: AppBar(
              elevation: 0.0,
              title: Text(
                'ISALAMI',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap: (value) {
                index = value;
                setState((){

                });
              },

              backgroundColor: mythemedata.primaryColor,
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                    label: "Quran",
                    backgroundColor: mythemedata.primaryColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                    label: "Hadeth",
                    backgroundColor: mythemedata.primaryColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                    label: "Sebha",
                    backgroundColor: mythemedata.primaryColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                    label: "Radio",
                    backgroundColor: mythemedata.primaryColor),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: "Settings",
                    backgroundColor: mythemedata.primaryColor),
              ],
            ),
          body: tabs[index],


        ),
      ],
    );
  }
  List<Widget>tabs=[quran(),sebha(),radio(),hadeth(),settings(),];
}
