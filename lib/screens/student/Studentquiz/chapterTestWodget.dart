import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/student/Studentquiz/ChapterTestWidget1.dart';

import '../../../widgets/text_widget.dart';

class ChapterTestWidget extends StatefulWidget {
  const ChapterTestWidget({Key? key}) : super(key: key);

  @override
  State<ChapterTestWidget> createState() => _ChapterTestWidgetState();
}

class _ChapterTestWidgetState extends State<ChapterTestWidget> {
  bool radiobutt = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          
        ),
        drawer: Drawer(),
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
                chapteraInnerWidget1()
                // state2 ? chapteraInnerWidget1() : chapteraInnerWidget2(),
              ],
            ),
          ),
        ));
  }

  Widget chapteraInnerWidget1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 400.w,
          height: 50.h,
          // padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Color(0xffDFDFDF),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Align(
            alignment: Alignment.center,
            child: text(context, 'Question 1', 65.sp, const Color(0xff000000),
                bold: false),
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
          child: Align(
            alignment: Alignment.center,
            child: text(
                context,
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not?',
                65.sp,
                Color(0xffFFFFFF),
                bold: true,
                maxLines: 6),
          ),
        ),
        SizedBox(
          height: 50.h,
        ),
        radioWidget(),
        radioWidget(),
        radioWidget(),
        radioWidget(),
        SizedBox(
          height: 50.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                print('Container Pressed');
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ChapterStateWidget1()));
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
                    'Next',
                    style: TextStyle(fontSize: 65.sp, color: Color(0xffFFFFFF)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget radioWidget() {
    return Padding(
      padding: EdgeInsets.only(
        top: 30.h,
        // left: 40.w,
      ),
      child: Row(
        children: [
          Radio(
            value: radiobutt,
            groupValue: radiobutt,
            onChanged: (bool? value) {
              setState(
                () {
                  radiobutt = value!;
                },
              );
            },
          ),
          Container(
              padding: EdgeInsets.all(10.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Color(0xff01B489))),
              child: Wrap(
                children: [
                  text(context, 'It is a long established fact that a  ', 65.sp,
                      const Color(0xff000000)),
                ],
              ))
        ],
      ),
    );
  }
}
