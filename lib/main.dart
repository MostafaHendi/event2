import 'package:event2/Home/HomeScreen.dart';
import 'package:event2/Home/profileTap.dart';
import 'package:event2/Utils/app_Theme.dart';
import 'package:event2/providers/language_provider.dart';
import 'package:event2/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(MultiProvider(
    providers: [
  ChangeNotifierProvider(create: (context)=> AppLanguageProvider()),
      ChangeNotifierProvider(create: (context)=> AppThemeProvider()),

    ],
      child: MyApp()));
}

class  MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    var languageProvider =Provider.of<AppLanguageProvider>(context);
    var themeProvider =Provider.of<AppThemeProvider>(context);
    return MaterialApp(
debugShowCheckedModeBanner: false,
      initialRoute: Homescreen.routeName,
      routes: {
  profileTap.routeName :(context)=>profileTap(),
        Homescreen.routeName:(context)=>Homescreen()
      },
      theme:AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.appTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(languageProvider.appLanguage),
    );
  }
}
