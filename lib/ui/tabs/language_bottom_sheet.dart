import 'package:event_app/provider/language_provider.dart';
import 'package:event_app/utls/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppLanguageProvider>(context);
    return Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                provider.changeLangauge('en');
              },
              child:
              provider.appLangauge =="en"?
                  getSelectedItemWidget(AppLocalizations.of(context)!.english):
              getUnSelectedItemWidget(AppLocalizations.of(context)!.english)

          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              provider.changeLangauge('ar');
            },
            child:
            provider.appLangauge =="ar"?
            getSelectedItemWidget(AppLocalizations.of(context)!.arabic):
            getUnSelectedItemWidget(AppLocalizations.of(context)!.arabic)

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

