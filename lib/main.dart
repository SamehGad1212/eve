import 'package:event_app/home_screen/profile.dart';
import 'package:event_app/provider/language_provider.dart';
import 'package:event_app/provider/theme_provider.dart';
import 'package:event_app/ui/tabs/home_screen.dart';
import 'package:event_app/utls/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (create) => AppLanguageProvider()),
        ChangeNotifierProvider(create: (create) => AppThemeProvider()),
  ], child: MyApp()));
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var languageProvider = Provider.of<AppLanguageProvider>(context);
    var themeProvider = Provider.of<AppThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute:Home_Screen.routeName,
     // HomeScreen.routeName,

      routes: {
       Home_Screen.routeName: (context) => Home_Screen(),
       // HomeScreen.routeName: (context) => HomeScreen(), // تأكد إنك معرف routeName في HomeScreen
      },

      theme:AppTheme.lightTheme,
      themeMode: themeProvider.appTheme,
      darkTheme: AppTheme.darkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(languageProvider.appLangauge),
    );
  }
}