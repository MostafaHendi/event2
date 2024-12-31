import 'package:event2/Home/Languagebottomsheet.dart';
import 'package:event2/Home/theme_bottomsheet.dart';
import 'package:event2/Utils/app_colors.dart';
import 'package:event2/providers/language_provider.dart';
import 'package:event2/providers/theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
class profileTap extends StatefulWidget{
  static const String routeName='profileTap';

  @override
  State<profileTap> createState() => _profileTapState();
}

class _profileTapState extends State<profileTap> {
  @override
  Widget build(BuildContext context) {
    var languageProvider=Provider.of<AppLanguageProvider>(context);
    var themeProvider=Provider.of<AppThemeProvider>(context);

    // TODO: implement build
   return Scaffold(
appBar: AppBar(

  backgroundColor: AppColors.primaryLight,
),
     body: Padding(
       padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 12),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           Text(AppLocalizations.of(context)!.language
           ,style:Theme.of(context).textTheme.headlineLarge ,),
           SizedBox(height: 16,),
           InkWell(
             onTap: (){
               showLonguageBottomsheet();
             },
             child: Container(
               padding: EdgeInsets.all(16),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(16),
                 border: Border.all(
                   color: AppColors.primaryLight,
                   width: 2,
                 )
               ),

               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [

                   Text(
                     languageProvider.appLanguage=='en'?
                   AppLocalizations.of(context)!.english
                 :
                     AppLocalizations.of(context)!.arabic,
                     style: Theme.of(context).textTheme.headlineMedium,),
                   Icon(Icons.arrow_drop_down)
                 ],
               ),
             ),
           ),
           SizedBox(height: 20,),
           Text(AppLocalizations.of(context)!.theme
             ,style:Theme.of(context).textTheme.headlineLarge ,),
           SizedBox(height: 16,),
           InkWell(
             onTap: (){
               showThemeBottomsheet();
             },
             child: Container(
               padding: EdgeInsets.all(16),
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(16),
                   border: Border.all(
                     color: AppColors.primaryLight,
                     width: 2,
                   )
               ),

               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [

                   Text(
                     themeProvider.isDarkMode()?
                     AppLocalizations.of(context)!.dark
                         :
                     AppLocalizations.of(context)!.light,
                     style: Theme.of(context).textTheme.headlineMedium,),
                   Icon(Icons.arrow_drop_down)
                 ],
               ),
             ),
           ),


         ],
       ),
     ),
   );
  }

  void showLonguageBottomsheet() {
    showModalBottomSheet(context: context,
        builder:(Context) => Languagebottomsheet() );
  }
  void showThemeBottomsheet() {
    showModalBottomSheet(context: context,
        builder: (context)=>Themebottomsheet());

  }
}
