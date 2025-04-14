import 'package:flutter/material.dart';
import 'package:odyssey/core/utils/app_text_stayles.dart';

AppBar buildAppBar({context,required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: GestureDetector(

        onTap: (){
         Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_ios_new)),
    centerTitle: true,
    title: Text(title,style: TextStyles.bold19,),
  );
}
