 import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/core/constants/app_colors.dart';

AppBar customAppbar(BuildContext context,String title, {bool isArrowBack = true}) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Text(title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600),),
      ),
      centerTitle: true,
      leading:isArrowBack? InkWell(
        onTap: () => Navigator.pop(context),
        child:const Padding(
          padding:  EdgeInsets.only(left:15.0, top: 10),
          child:  CircleAvatar(
              radius: 18.5,
              backgroundColor: Colors.black45,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: scaffoldColor,
                child: Icon(Icons.arrow_back),
              ),
            ),
        ),
      ): null,
    );
  }