import 'package:event_app/provider/language_provider.dart';
import 'package:event_app/provider/theme_provider.dart';
import 'package:event_app/ui/tabs/language_bottom_sheet.dart';
import 'package:event_app/ui/tabs/theme_bottom_sheet.dart';
import 'package:event_app/utls/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'language_bottom_sheet.dart';

class Home extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var languageProvider = Provider.of<AppLanguageProvider>(context);
    var themeProvider = Provider.of<AppThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: AppColors.blueColors,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(AppLocalizations.of(context)!.language, style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(
              height: 18,
            ),
            InkWell(
              onTap: () {
                showLanguageBottomSheet();
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: AppColors.primaryLight,
                      width: 2,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      languageProvider.appLangauge == "en"
                          ? AppLocalizations.of(context)!.english
                          : AppLocalizations.of(context)!.arabic,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      size: 36,
                      color: AppColors.primaryLight,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Text(AppLocalizations.of(context)!.theme,
                style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(
              height: 18,
            ),
            InkWell(
              onTap: () {
                showThemeBottomSheet();
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: AppColors.primaryLight,
                      width: 2,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      themeProvider.isDarkMode()
                          ? AppLocalizations.of(context)!.dark
                          : AppLocalizations.of(context)!.light,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      size: 36,
                      color: AppColors.primaryLight,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => const LanguageBottomSheet());
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => const ThemeBottomSheet());
  }
}
