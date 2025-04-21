import 'package:event_app/provider/language_provider.dart';
import 'package:event_app/provider/theme_provider.dart';
import 'package:event_app/utls/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var languageProvider = Provider.of<AppLanguageProvider>(context);
    var themeProvider = Provider.of<AppThemeProvider>(context);
    return Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                // change theme dark
themeProvider.changeTheme(ThemeMode.dark);
              },
              child:
themeProvider.isDarkMode()?
getSelectedItemWidget(AppLocalizations.of(context)!.dark):
              getUnSelectedItemWidget(AppLocalizations.of(context)!.dark)

          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              //change theme to light
              themeProvider.changeTheme(ThemeMode.light);
            },
            child:
        themeProvider.appTheme ==ThemeMode.light?
            getSelectedItemWidget(AppLocalizations.of(context)!.light):
            getUnSelectedItemWidget(AppLocalizations.of(context)!.light)

          )
        ],
      ),
    );
  }

    Widget getSelectedItemWidget(String text){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
              style: Theme.of(context).textTheme.headlineMedium),
          const Icon(
            Icons.check,
            color: AppColors.primaryLight,
            size: 30,
          ),
        ],
      );

    }
    Widget getUnSelectedItemWidget(String text){
    return
      Text( text,
        style: Theme
            .of(context)
            .textTheme
            .headlineLarge,
      );
    }
}

