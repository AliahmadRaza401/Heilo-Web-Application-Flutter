import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/widgets/text_widget.dart';

import 'chapterTestWidget2.dart';

class ChapterStateWidget1 extends StatefulWidget {
  const ChapterStateWidget1({Key? key}) : super(key: key);

  @override
  State<ChapterStateWidget1> createState() => _ChapterStateWidget1State();
}

class _ChapterStateWidget1State extends State<ChapterStateWidget1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back)),
          iconTheme: IconThemeData(color: Colors.black),
        ),
      // drawer: const Drawer(),
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
                  text(context, 'CHAPTER - 1: SPEED', 65.sp, Color(0xff01B489),
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
                                    fontSize: 65.sp, color: Color(0xff01B489)),
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
               Divider(
              thickness: 4,
              color: Color(0xffA8A8A8),
            ),
             SizedBox(
                height: 30.h,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // width: 110.w,
                    // height: 45.h,
                    margin: EdgeInsets.only(left: 70.w),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text(context, 'Congratulations!!',75.sp,
                            Color(0xff01B489),
                            bold: true),
                        text(
                            context,
                            'You have successfully completed the exam.',
                            65.sp,
                            Color(0xffA8A8A8),
                            bold: false),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    padding: EdgeInsets.all(30.h),
                    decoration: BoxDecoration(
                      color: Color(0xff01B489),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50.h,
                          width: 170,
                          padding: EdgeInsets.all(10.h),
                          margin: EdgeInsets.only(bottom: 18.h),
                          // alignment: Alignment.centerRight,
                          decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(25)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'What you need to know?',
                              style: TextStyle(color: Color(0xffA8A8A8)),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: text(
                              context,
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not?',
                             65.sp,
                              Color(0xffFFFFFF),
                              bold: true,
                              maxLines: 6),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50.h,
                      width: 130,
                      padding: EdgeInsets.all(10.h),
                      // alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xff01B489), width: 2),
                          borderRadius: BorderRadius.circular(30.r)),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'View Solution',
                          style: TextStyle(color: Color(0xff535353)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  // chapteraInnerWidget3(),
                  // state3 ? chapteraInnerWidget3() : SizedBox(),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                             print('Container Pressed');
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ChapterTestWidget2()));
             
                        },
                        child: Container(
                          height: 50.h,
                          width: 130,
                          padding: EdgeInsets.all(10.h),
                          // alignment: Alignment.centerRight,
                          decoration: BoxDecoration(
                              color: Color(0xff01B489),
                              borderRadius: BorderRadius.circular(10)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Finish',
                              style: TextStyle(color: Color(0xffFFFFFF)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
