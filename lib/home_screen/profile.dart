import 'dart:core';

import 'package:event_app/utls/app_colors.dart';
import 'package:event_app/utls/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Home_Screen extends StatefulWidget {
  static const String routeName = 'home_screen';

  Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      Theme(
        data: Theme.of(context)
            .copyWith(canvasColor:Colors.transparent
         ),
        child: BottomAppBar(
          padding: EdgeInsets.zero,
          color: Theme.of(context).primaryColor,
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          child: BottomNavigationBar(
            selectedItemColor: AppColors.whiteColors,
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: [
              buildBottomNavItem(
                Index: 0,
                iconNameSelected: AssetManager.iconHomeSelected,
                iconName: AssetManager.iconHome,
                label: AppLocalizations.of(context)!.home,
              ),
              buildBottomNavItem(
                Index: 1,
                iconNameSelected: AssetManager.iconMapSelected,
                iconName: AssetManager.iconMap,
                label: AppLocalizations.of(context)!.map,
              ),
              buildBottomNavItem(
                Index: 2,
                iconNameSelected: AssetManager.iconFavoriteSelected,
                iconName: AssetManager.iconFavorite,
                label: AppLocalizations.of(context)!.favorite,
              ),
              buildBottomNavItem(
                Index: 3,
                iconNameSelected: AssetManager.iconProfileSelected,
                iconName: AssetManager.iconProfile,
                label: AppLocalizations.of(context)!.profile,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: AppColors.whiteColors,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


    );
  }

  BottomNavigationBarItem buildBottomNavItem({
    required int Index, // تغيير Index إلى index
    required String iconNameSelected,
    required String iconName,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: ImageIcon(
          AssetImage(selectedIndex == Index ? iconNameSelected : iconName)),
      // تعديل من Index إلى index
      label: label,
    );
  }
}
