import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/widgets/text_widget.dart';

class ChapterTestWidget2 extends StatefulWidget {
  const ChapterTestWidget2({Key? key}) : super(key: key);

  @override
  State<ChapterTestWidget2> createState() => _ChapterTestWidget2State();
}

class _ChapterTestWidget2State extends State<ChapterTestWidget2> {
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
            const Divider(
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
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  padding: EdgeInsets.all(30.h),
                  decoration: BoxDecoration(
                    color: Color(0xff01B489),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: text(
                        context,
                        'Question: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not?',
                        65.sp,
                        Color(0xffFFFFFF),
                        bold: false,
                        maxLines: 6),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 30.h,
                    left: 120.w,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                //       text(context, 'Correct Answer:          ', 65.sp,
                //           Color(0xff000000)),
                //       Container(
                //           padding: EdgeInsets.all(10.h),
                //           decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(10),
                //               border: Border.all(
                //                   width: 2, color: Color(0xff01B489))),
                //           child: text(
                //               context,
                //               'It is a long established fact that a reader will be distracted by the readable ',
                //               65.sp,
                //               Color(0xff000000),
                //               bold: false)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  padding: EdgeInsets.all(10.h),
                  decoration: BoxDecoration(
                    color: Color(0xff01B489),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 350.h,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 50.h,
                              width: 500.w,
                              // padding: EdgeInsets.all(10.h),
                              // alignment: Alignment.centerRight,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(20.r)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Explanations:',
                                  style: TextStyle(
                                      fontSize: 65.sp,
                                      color: Color(0xff9B9B9B)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                // width: 548.w,
                                child: Wrap(
                                  children: [
                                    text(
                                        context,
                                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theand scrambled it to make a type specimen book. It has survived not? ',
                                        65.sp,
                                        Color(0xffFFFFFF),
                                        bold: false,
                                        maxLines: 5),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                // width: 548.w,
                                child: Wrap(
                                  children: [
                                    text(
                                        context,
                                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theand scrambled it to make a type specimen book. It has survived not? ',
                                        65.sp,
                                        Color(0xffFFFFFF),
                                        bold: false,
                                        maxLines: 5),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 120.w, right: 120.w),
                        height: 276.h,
                        // width: 346.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
