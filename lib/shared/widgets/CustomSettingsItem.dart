// ignore_for_file: unused_import, must_be_immutable

import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notey/resources/color_manager.dart';

class CustomeSettingItem extends StatelessWidget {
  final String title;
  final Widget? path;
  final bool redColor;
  void Function()? onPressed;

  CustomeSettingItem({Key? key,required this.title, this.onPressed, this.path,this.redColor=false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Card(
          color: Colors.transparent,
          elevation: 0,
          child: ListTile(
            leading: path,
            title:
              Text(title.tr() == ""?"ffff":title.tr(),style: Theme.of(context).textTheme.bodyText1!.copyWith(color:!redColor? ColorManager.white:ColorManager.red),),


          ),
        ),
        decoration: BoxDecoration(
          color: ColorManager.black,
          borderRadius: BorderRadius.all(
            Radius.circular(12.0.r),
          ),
        ),
      ),
    );
  }
}
