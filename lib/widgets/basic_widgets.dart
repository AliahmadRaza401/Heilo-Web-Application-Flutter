import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/widgets/text_widget.dart';

class TextBtn extends StatelessWidget {
  String title;
   TextBtn({required this.title}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: 70.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 1,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: text(context, title, 24.sp, Colors.black),
    );
  }
}

