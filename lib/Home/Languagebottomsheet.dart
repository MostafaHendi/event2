import 'package:event2/Utils/app_colors.dart';
import 'package:event2/providers/language_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class Languagebottomsheet extends StatefulWidget {
  const Languagebottomsheet({super.key});

  @override
  State<Languagebottomsheet> createState() => _LanguagebottomsheetState();
}

class _LanguagebottomsheetState extends State<Languagebottomsheet> {
  @override
  Widget build(BuildContext context) {
    var provider= Provider.of<AppLanguageProvider>(context);
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(onTap: (){
provider.changeLanguage('en');
          },
child: provider.appLanguage=='en'?
    getSelectItemWidget(AppLocalizations.of(context)!.english):
    getUnSelectedItemWidget(AppLocalizations.of(context)!.english)
          ),
          SizedBox(height: 15,),
          InkWell(
            onTap: (){
              provider.changeLanguage('ar');
            },
child: provider.appLanguage=='ar'?
            getSelectItemWidget(AppLocalizations.of(context)!.arabic):
    getUnSelectedItemWidget(AppLocalizations.of(context)!.arabic)
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
