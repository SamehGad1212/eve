import 'package:event_app/ui/home/home_screen.dart';
import 'package:event_app/utls/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.routeName ,
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen()
      },
      theme:AppTheme.lightTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale("ar"),

    );
  }
}