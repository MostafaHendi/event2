import 'package:event2/Utils/app_colors.dart';
import 'package:event2/providers/language_provider.dart';
import 'package:event2/providers/theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class Themebottomsheet extends StatefulWidget {
  const Themebottomsheet({super.key});

  @override
  State<Themebottomsheet> createState() => _ThemebottomsheetState();
}

class _ThemebottomsheetState extends State<Themebottomsheet> {
  @override
  Widget build(BuildContext context) {
    var languageProvider= Provider.of<AppLanguageProvider>(context);
    var themeProvider= Provider.of<AppThemeProvider>(context);

    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(onTap: (){
themeProvider.changeTheme(ThemeMode.dark);
          },
child: themeProvider.isDarkMode()?
    getSelectItemWidget(AppLocalizations.of(context)!.dark):
    getUnSelectedItemWidget(AppLocalizations.of(context)!.dark)
          ),
          SizedBox(height: 15,),
          InkWell(
            onTap: (){
             themeProvider.changeTheme(ThemeMode.light);
            },
child: themeProvider.appTheme==ThemeMode.light?
            getSelectItemWidget(AppLocalizations.of(context)!.light):
    getUnSelectedItemWidget(AppLocalizations.of(context)!.light)
            ,
          )


        ],
      ),
    );
  }

  Widget getSelectItemWidget(String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
          style: Theme.of(context).textTheme.headlineMedium,),
        Icon(Icons.check,color: AppColors.primaryLight,size: 30,)
      ],
    );
  }
  Widget getUnSelectedItemWidget(String text){
    return Text(text,
      style:Theme.of(context).textTheme.headlineLarge ,);
  }
}
