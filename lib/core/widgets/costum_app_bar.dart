// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:odyssey/core/utils/app_text_stayles.dart';

AppBar buildAppBar(context,{required String title,}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: GestureDetector(
        onTap: (){

          Navigator.of(context).pop();
        },
        child: Icon(Icons.arrow_back_ios_new)),
    centerTitle: true,
    title: Text(title,style: TextStyles.bold19,),
  );
}
