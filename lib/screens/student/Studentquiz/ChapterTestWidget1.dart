import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/widgets/text_widget.dart';

class ChapterStateWidget1 extends StatefulWidget {
  const ChapterStateWidget1({Key? key}) : super(key: key);

  @override
  State<ChapterStateWidget1> createState() => _ChapterStateWidget1State();
}

class _ChapterStateWidget1State extends State<ChapterStateWidget1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(
            top: 25.h,
            left: 40.w,
            right: 40.w,
            bottom: 25.h,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Align(
                    alignment: Alignment.centerLeft,
                    child: text(context, 'PHYSICS', 75.sp, Color(0xff01B489),
                        bold: true)),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    text(
                        context, 'CHAPTER - 1: SPEED', 65.sp, Color(0xff01B489),
                        bold: false),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Color(0xff01B489),
                                borderRadius: BorderRadius.circular(10)),
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '00',
                                  style: TextStyle(
                                    fontSize: 65.sp,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            margin: EdgeInsets.only(left: 5.h),
                            decoration: BoxDecoration(
                                color: Color(0xff01B489),
                                borderRadius: BorderRadius.circular(10)),
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '25',
                                  style: TextStyle(
                                    fontSize: 65.sp,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            margin: EdgeInsets.only(left: 5.h),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xff01B489),
                                  width: 2,
                                ),
                                // color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(10)),
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '66',
                                  style: TextStyle(
                                      fontSize: 65.sp,
                                      color: Color(0xff01B489)),
                                )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                text(
                    context,
                    'NOTE: As you proceed further, the questions get tricker, but you can crack it, if you try hard. Godspeed!',
                    65.sp,
                    Color(0xffA8A8A8),
                    bold: true),

                SizedBox(
                  height: 30.h,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
