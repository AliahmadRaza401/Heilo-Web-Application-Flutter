import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/utils/dynamic_sizes.dart';

import '../../../utils/config.dart';

class AdminContact extends StatefulWidget {
  const AdminContact({ Key? key }) : super(key: key);

  @override
  State<AdminContact> createState() => _AdminContactState();
}

class _AdminContactState extends State<AdminContact> {
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
        color: AppColors.customWhite,
        borderRadius: BorderRadius.circular(30.r),

      ),
      padding: EdgeInsets.symmetric(horizontal:AppSizes.dynamicWidth(context, .03)),
      child: Column(children: [
          Expanded(child: Padding(
            padding:  EdgeInsets.symmetric(vertical: AppSizes.dynamicHeight(context, .03)),
            child: Container(
              width: double.infinity,
               decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(30.r),

      ),
            ),
          )),
          

           Expanded(child: Padding(
            padding:  EdgeInsets.symmetric(vertical: AppSizes.dynamicHeight(context, .03)),
            child: Container(
              width: double.infinity,
               decoration: BoxDecoration(
        color: AppColors.customYellow,
        borderRadius: BorderRadius.circular(30.r),

      ),
            ),
          )),
      ],),
    );
  }
}