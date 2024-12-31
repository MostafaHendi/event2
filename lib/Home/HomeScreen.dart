//import 'dart:ui_web';
import 'package:event2/Utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Homescreen extends StatefulWidget {
  static const String routeName='home_screen';
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
bottomNavigationBar: Theme(
  data: Theme.of(context).copyWith(
    canvasColor: Theme.of(context).primaryColor
  ),
  child: BottomNavigationBar
    (items:[
      buildBottomNavItems(iconName: AssetsManager.iconhome,
         ),
    buildBottomNavItems(iconName: AssetsManager.iconmap,
        ),
    buildBottomNavItems(iconName: AssetsManager.iconFavorite,
     ),
    buildBottomNavItems(iconName: AssetsManager.iconprofile,
      ),
  ]),
),
    );
  }
  BottomNavigationBarItem buildBottomNavItems({required String iconName,}){

    return BottomNavigationBarItem(
        icon:ImageIcon(AssetImage(iconName)) ,
    label: "");
  }
}
