import 'package:event_app/utls/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HomeScreen extends StatelessWidget {
  static const String routeName = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blueColors,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(AppLocalizations.of(context)!.language, style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(
              height: 18,
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: AppColors.primaryLight,
                    width: 2,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context)!.arabic,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 36,
                    color: AppColors.primaryLight,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
