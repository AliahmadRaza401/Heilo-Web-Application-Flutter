import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/widgets/buttons.dart';
import 'package:heilo/widgets/text_widget.dart';

class TeacherEditProfileWeb extends StatefulWidget {
  const TeacherEditProfileWeb({Key? key}) : super(key: key);

  @override
  State<TeacherEditProfileWeb> createState() => _TeacherEditProfileWebState();
}

class _TeacherEditProfileWebState extends State<TeacherEditProfileWeb> {
  // Initial Selected Value
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 110.h,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 526.w,
                  // height: 780.h,
                  decoration: BoxDecoration(
                    // color: Colors.amber,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  padding: EdgeInsets.only(
                    left: 45.w,
                    right: 45.w,
                    // top: 50.h,
                  ),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      Container(
                        // height: 710.h,
                        decoration: BoxDecoration(
                          color: Color(0xffF1F1F1),
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        padding: EdgeInsets.only(
                          top: 130.h,
                          left: 50.w,
                          right: 50.w,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.r),
                                  border: Border.all(
                                      width: 1, color: Color(0xffE0E0E0))),
                              child: text(
                                context,
                                "Sakib Abdullah",
                                18.0.sp,
                                AppColors.greyText,
                                bold: true,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              padding: EdgeInsets.all(10.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.r),
                                  border: Border.all(
                                      width: 1, color: Color(0xffE0E0E0))),
                              child: text(
                                context,
                                "Maple Leaf International School and College",
                                14.0.sp,
                                AppColors.greyText,
                              ),
                            ),
                            SizedBox(
                              height: 25.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  // padding: EdgeInsets.all(10.h),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.r),
                                      color: Color(0xffF5F5F5)),
                                  height: 35.h,
                                  width: 167.w,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: text(
                                      context,
                                      "Hourly Rate",
                                      14.0.sp,
                                      Color(0xff747474),
                                      bold: true,
                                      // alignText: Alignment.center
                                    ),
                                  ),
                                ),
                                Container(
                                  // padding: EdgeInsets.all(10.h),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.r),
                                      border: Border.all(
                                          color: Color(0xffF5F5F5),
                                          width: 1.5)),
                                  height: 35.h,
                                  width: 138.w,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: text(
                                      context,
                                      "250 BDT",
                                      14.0.sp,
                                      Color(0xff747474),
                                      bold: true,
                                      // alignText: Alignment.center
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 35.h,
                            ),
                            Container(
                              padding: EdgeInsets.all(10.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.r),
                                  border: Border.all(
                                      width: 1, color: Color(0xffE0E0E0))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: text(
                                      context,
                                      "About Me",
                                      18.0.sp,
                                      Color(0xff1BE59D),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: text(
                                        context,
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque facilisis aenean et elementum massa. Egestas tempor viverra adipiscing ipsum, proin nunc vitae ultrices nec. Tellus in viverra pretium feugiat sit interdum ultricies. Facilisi vulputate mauris cras sapien, scelerisque ullamcorper aliquam duis viverra.",
                                        14.0.sp,
                                        AppColors.customBlack,
                                        maxLines: 8),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              padding: EdgeInsets.all(10.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.r),
                                  border: Border.all(
                                      width: 1, color: Color(0xffE0E0E0))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text(context, 'Subjects Willing to Teach',
                                      18.sp, Color(0xff1BE59D)),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Wrap(
                                    spacing: 10.h,
                                    runSpacing: 10.h,
                                    children: [
                                      coloredButton(
                                          context, 'math', Color(0xff1BE59D),
                                          width: 137.w,
                                          height: 35.h,
                                          fontSize: 14.sp,
                                          fontColor: Color(0xffffffff),
                                          function: () {},
                                          radious: 25.r),
                                      coloredButton(
                                          context, 'maths', Color(0xffF37171),
                                          width: 156.w,
                                          height: 35.h,
                                          fontSize: 14.sp,
                                          fontColor: Color(0xffffffff),
                                          function: () {},
                                          radious: 25.r),
                                      coloredButton(
                                          context, 'maths', Color(0xff2196F3),
                                          width: 113.w,
                                          height: 35.h,
                                          fontSize: 14.sp,
                                          fontColor: Color(0xffffffff),
                                          function: () {},
                                          radious: 25.r),
                                      coloredButton(
                                          context, 'maths', Color(0xffFEDB41),
                                          width: 190.w,
                                          height: 35.h,
                                          fontSize: 14.sp,
                                          fontColor: Color(0xffffffff),
                                          function: () {},
                                          radious: 25.r),
                                      coloredButton(
                                          context, 'maths', Color(0xff915DE7),
                                          width: 213.w,
                                          height: 35.h,
                                          fontSize: 14.sp,
                                          fontColor: Color(0xffffffff),
                                          function: () {},
                                          radious: 25.r),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          top: -50.0,
                          right: 0,
                          left: 0,
                          // (background container size) - (circle height / 2)
                          child: Center(
                            child: Stack(
                              overflow: Overflow.visible,
                              children: [
                                Container(
                                  height: 170.h,
                                  width: 183.w,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/png/wp2398385 1.png",
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: -15,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 3,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xffC4C4C4).withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Row(
                                      children: [
                                        Image.asset('assets/png/star.png'),
                                        text(
                                          context,
                                          "4.5",
                                          15.sp,
                                          Colors.black,
                                          bold: true,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            //
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Container(
                  // alignment: Alignment.center,
                  width: 400.w,
                  height: 200.h,
                  decoration: BoxDecoration(
                    color: Color(0xffF8F8F8),
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  margin: EdgeInsets.only(
                    left: 45.w,
                    right: 45.w,
                    // top: 50.h,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 160.w,
                            height: 35.h,
                            margin: EdgeInsets.only(
                              top: 21.h,
                              left: 25.w,
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xff3DDEA5),
                                borderRadius: BorderRadius.circular(20)),
                            child: Align(
                              alignment: Alignment.center,
                              child: text(context, "Availability", 18.0.sp,
                                  AppColors.customWhite,
                                  bold: false),
                            ),
                          ),
                          Container(
                            width: 93.9.w,
                            height: 35.h,
                            margin: EdgeInsets.only(
                              top: 21.h,
                              right: 25.w,
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xffC4C4C4),
                                borderRadius: BorderRadius.circular(20)),
                            child: Align(
                              alignment: Alignment.center,
                              child: text(
                                  context, "Edit", 18.0.sp, Color(0xff1BE59D),
                                  bold: false),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        width: 132.w,
                        height: 35.h,
                        margin: EdgeInsets.only(
                          top: 15.h,
                          left: 45.w,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff3DDEA5),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: text(
                              context, 'Pre 12pm ', 18.r, Color(0xff000000)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                right: 20.w,
                top: 20.h,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40.h,
                  ),
                  greyWidget1(),
                  SizedBox(
                    height: 40.h,
                  ),
                  greyWidget2(),
                  SizedBox(
                    height: 40.h,
                  ),
                  greyWidget3(),
                  SizedBox(
                    height: 40.h,
                  ),
                  greyWidget4(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget textWidget(
    String text,
    fontWeight,
    color,
    size,
  ) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: Color(color),
      ),
    );
  }

  Widget greyWidget1() {
    return Container(
      width: 800.w,

      // height: 160.h,
      decoration: BoxDecoration(
          color: Color(0xffF1F1F1), borderRadius: BorderRadius.circular(30.r)),
      padding: EdgeInsets.only(
        left: 60.w,
        right: 60.w,
        top: 60.h,
        bottom: 20.h,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 230.w,
                decoration: BoxDecoration(
                    color: const Color(0xff3DDEA5),
                    borderRadius: BorderRadius.circular(20)),
                child: Align(
                  alignment: Alignment.center,
                  child: textWidget(
                    "Basic Information",
                    FontWeight.w600,
                    0xffffffff,
                    18,
                  ),
                ),
              ),
              Container(
                width: 120.w,
                decoration: BoxDecoration(
                    color: const Color(0xffC4C4C4),
                    borderRadius: BorderRadius.circular(20)),
                child: Align(
                  alignment: Alignment.center,
                  child: textWidget(
                    "Edit",
                    FontWeight.w600,
                    0xff3DDEA5,
                    18,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 0.5, color: Color(0xffC4C4C4)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textWidget(
                      "Name",
                      FontWeight.w300,
                      0xff7d7d7d,
                      12,
                    ),
                    textWidget(
                      "Sakib  Abdullah",
                      FontWeight.w600,
                      0xff7d7d7d,
                      15,
                    ),
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.all(6),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(10),
                //   border: Border.all(width: 0.5, color: Color(0xffC4C4C4)),
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textWidget(
                      "Email",
                      FontWeight.w300,
                      0xff7d7d7d,
                      12,
                    ),
                    textWidget(
                      "sakib.abdullah@gmail.com",
                      FontWeight.w600,
                      0xff7d7d7d,
                      15,
                    ),
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.all(6),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(10),
                //   border: Border.all(width: 0.5, color: Color(0xffC4C4C4)),
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textWidget(
                      "Contact Number",
                      FontWeight.w300,
                      0xff7d7d7d,
                      12,
                    ),
                    textWidget(
                      "01765646564",
                      FontWeight.w600,
                      0xff7d7d7d,
                      15,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 0.5, color: Color(0xffC4C4C4)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DropdownButton(
                      // Initial Value
                      value: dropdownvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                    textWidget(
                      "Rajshahi",
                      FontWeight.w600,
                      0xff7d7d7d,
                      15,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 25.w,
              ),
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 0.5, color: Color(0xffC4C4C4)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textWidget(
                      "Village, Upazila",
                      FontWeight.w600,
                      0xff7d7d7d,
                      14,
                    ),
                    textWidget(
                      "Meherchun..",
                      FontWeight.w600,
                      0xff7d7d7d,
                      15,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 25.w,
              ),
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 0.5, color: Color(0xffC4C4C4)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textWidget(
                      "Gender",
                      FontWeight.w600,
                      0xff7d7d7d,
                      14,
                    ),
                    DropdownButton(
                      // Initial Value
                      value: dropdownvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget greyWidget2() {
    return Container(
      width: 800.w,
      // height: 160.h,
      decoration: BoxDecoration(
          color: Color(0xffF1F1F1), borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.only(
        left: 60.w,
        right: 60.w,
        top: 20.h,
        bottom: 20.h,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 230.w,
                decoration: BoxDecoration(
                    color: const Color(0xff3DDEA5),
                    borderRadius: BorderRadius.circular(20)),
                child: Align(
                  alignment: Alignment.center,
                  child: textWidget(
                    "Education",
                    FontWeight.w600,
                    0xffffffff,
                    18,
                  ),
                ),
              ),
              Container(
                width: 120.w,
                decoration: BoxDecoration(
                    color: const Color(0xffC4C4C4),
                    borderRadius: BorderRadius.circular(20)),
                child: Align(
                  alignment: Alignment.center,
                  child: textWidget(
                    "Edit",
                    FontWeight.w600,
                    0xff3DDEA5,
                    18,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 0.5, color: Color(0xffC4C4C4)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textWidget(
                      "Current Instituite",
                      FontWeight.w300,
                      0xff7d7d7d,
                      12,
                    ),
                    textWidget(
                      "Maple Leaf International School and College",
                      FontWeight.w600,
                      0xff7d7d7d,
                      15,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 0.5, color: Color(0xffC4C4C4)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textWidget(
                      "Class",
                      FontWeight.w300,
                      0xff7d7d7d,
                      12,
                    ),
                    DropdownButton(
                      // Initial Value
                      value: dropdownvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 0.5, color: Color(0xffC4C4C4)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textWidget(
                      "Medium",
                      FontWeight.w600,
                      0xff7d7d7d,
                      15,
                    ),
                    DropdownButton(
                      // Initial Value
                      value: dropdownvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 25.w,
              ),
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 0.5, color: Color(0xffC4C4C4)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textWidget(
                      "Background",
                      FontWeight.w600,
                      0xff7d7d7d,
                      14,
                    ),
                    DropdownButton(
                      // Initial Value
                      value: dropdownvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget greyWidget3() {
    return Container(
      width: 800.w,
      // height: 160.h,
      decoration: BoxDecoration(
          color: Color(0xffF1F1F1), borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.only(
        left: 60.w,
        right: 60.w,
        top: 20.h,
        bottom: 20.h,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 230.w,
                decoration: BoxDecoration(
                    color: const Color(0xff3DDEA5),
                    borderRadius: BorderRadius.circular(20)),
                child: Align(
                  alignment: Alignment.center,
                  child: textWidget(
                    "Account Details",
                    FontWeight.w600,
                    0xffffffff,
                    18,
                  ),
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              textWidget(
                "Change Password",
                FontWeight.w600,
                0xff3DDEA5,
                18,
              ),
              Expanded(child: Container()),
              Container(
                width: 120.w,
                decoration: BoxDecoration(
                    color: const Color(0xffC4C4C4),
                    borderRadius: BorderRadius.circular(20)),
                child: Align(
                  alignment: Alignment.center,
                  child: textWidget(
                    "Edit",
                    FontWeight.w600,
                    0xff3DDEA5,
                    18,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 0.5, color: Color(0xffC4C4C4)),
                ),
                child: textWidget(
                  "Current Password",
                  FontWeight.w300,
                  0xff7d7d7d,
                  12,
                ),
              ),
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 0.5, color: Color(0xffC4C4C4)),
                ),
                child: textWidget(
                  "New Password",
                  FontWeight.w300,
                  0xff7d7d7d,
                  12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget greyWidget4() {
    return Container(
      width: 800.w,
      // height: 160.h,
      decoration: BoxDecoration(
          color: Color(0xffF1F1F1), borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.only(
        left: 60.w,
        right: 60.w,
        top: 20.h,
        bottom: 20.h,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 230.w,
                decoration: BoxDecoration(
                    color: const Color(0xff3DDEA5),
                    borderRadius: BorderRadius.circular(20)),
                child: Align(
                  alignment: Alignment.center,
                  child: textWidget(
                    "Attachments",
                    FontWeight.w600,
                    0xffffffff,
                    18,
                  ),
                ),
              ),
              Container(
                width: 120.w,
                decoration: BoxDecoration(
                    color: const Color(0xffC4C4C4),
                    borderRadius: BorderRadius.circular(20)),
                child: Align(
                  alignment: Alignment.center,
                  child: textWidget(
                    "Edit",
                    FontWeight.w600,
                    0xff3DDEA5,
                    18,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: textWidget(
                          "Student ID",
                          FontWeight.w300,
                          0xff7d7d7d,
                          12,
                        ),
                      ),
                      const Icon(
                        Icons.schema_rounded,
                        color: Color(
                          0xff3DDEA5,
                        ),
                        size: 30,
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 0.5, color: Color(0xffC4C4C4)),
                    ),
                    child: textWidget(
                      "Attachment",
                      FontWeight.w300,
                      0xff7d7d7d,
                      12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
