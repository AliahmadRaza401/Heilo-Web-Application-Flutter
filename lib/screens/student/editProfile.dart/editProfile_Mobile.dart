import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/student/drawer/student_drawer.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';

final GlobalKey<ScaffoldState> studentScafoldKey = GlobalKey();

class EditProfileMobile extends StatefulWidget {
  const EditProfileMobile({Key? key}) : super(key: key);

  @override
  State<EditProfileMobile> createState() => _EditProfileMobileState();
}

class _EditProfileMobileState extends State<EditProfileMobile> {
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
      key: studentScafoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
                size: 30, // Changing Drawer Icon Size
              ),
              onPressed: () {
                studentScafoldKey.currentState!.openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.primaryColor,
              child: Image.asset(
                'assets/png/wp2398385 1.png',
                height: AppSizes.dynamicHeight(context, 0.07),
                width: AppSizes.dynamicWidth(context, 0.07),
              ),
            ),
          ],
        ),
      ),
      drawer: StudentDrawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.only(
            left: AppSizes.dynamicWidth(context, 0.040),
            right: AppSizes.dynamicWidth(context, 0.040),
            top: AppSizes.dynamicHeight(context, 0.1),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(90.r),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 15.h),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Container(
                      // height: 631.h,
                      decoration: BoxDecoration(
                        color: Color(0xffF1F1F1),
                        // color: Colors.black,
                     borderRadius: BorderRadius.circular(90.r),
                      ),
                      padding: EdgeInsets.only(
                        top: 130.h,
                        left: 50.w,
                        right: 50.w,
                        bottom: AppSizes.dynamicHeight(context, 0.020),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text(
                            context,
                            "Sakib Abdullah",
                            18.0,
                            AppColors.greyText,
                            bold: true,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          text(
                            context,
                            "Maple Leaf International School and College",
                            14.0,
                            AppColors.greyText,
                          ),
                          SizedBox(
                            height: 70.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: AppSizes.dynamicWidth(context, 0.3),
                                height: AppSizes.dynamicHeight(context, 0.040),
                                decoration: BoxDecoration(
                                  color: AppColors.customDarkBlue,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: text(
                                    context,
                                    "Tutions completed",
                                    50.sp,
                                    AppColors.customWhite,
                                    bold: true,
                                    // alignText: Alignment.center
                                  ),
                                ),
                              ),
                              text(
                                context,
                                "150",
                                14.0,
                                AppColors.greytextText,
                                bold: true,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: AppSizes.dynamicWidth(context, 0.3),
                                height: AppSizes.dynamicHeight(context, 0.040),
                                decoration: BoxDecoration(
                                  color: Color(0xffA279E6),
                                  borderRadius: BorderRadius.circular(
                                    30,
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: text(
                                    context,
                                    "Tutors referred",
                                    50.sp,
                                    AppColors.customWhite,
                                    bold: true,
                                  ),
                                ),
                              ),
                              text(
                                context,
                                "150",
                                14.0,
                                AppColors.greytextText,
                                bold: true,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 60.h,
                          ),
                          Container(
                            padding: EdgeInsets.all(
                                AppSizes.dynamicHeight(context, 0.01)),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60.r),
                                border: Border.all(
                                    width: 2, color: const Color(0xffE0E0E0))),
                            child: text(
                                context,
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque facilisis aenean et elementum massa. Egestas tempor viverra adipiscing ipsum, proin nunc vitae ultrices nec. Tellus in viverra pretium feugiat sit interdum ultricies. Facilisi vulputate mauris cras sapien, scelerisque ullamcorper aliquam duis viverra.",
                                14.0,
                                AppColors.customBlack,
                                maxLines: 8),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top: -120.0,
                        right: 0,
                        left: 0,
                        // (background container size) - (circle height / 2)
                        child: Center(
                          child: Stack(
                            overflow: Overflow.visible,
                            children: [
                              Container(
                                height: AppSizes.dynamicHeight(context, 0.30),
                                width: AppSizes.dynamicWidth(context, 0.30),
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
                                top: 70,
                                right: -32,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
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
                                        15,
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
              Container(
                padding: EdgeInsets.only(
                  right: 20.w,
                  top: 20.h,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    SizedBox(height: AppSizes.dynamicHeight(context, 0.05)),
                  ],
                ),
              )
            ],
          ),
        ),
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
      decoration: BoxDecoration(
        color: const Color(0xffF1F1F1),
        borderRadius: BorderRadius.circular(90.r),
      ),
      padding: EdgeInsets.only(
        left: AppSizes.dynamicHeight(context, 0.02),
        right: AppSizes.dynamicHeight(context, 0.02),
        top: AppSizes.dynamicHeight(context, 0.03),
        bottom: AppSizes.dynamicHeight(context, 0.03),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: AppSizes.dynamicWidth(context, 0.45),
                height: AppSizes.dynamicHeight(context, 0.04),
                decoration: BoxDecoration(
                  color: const Color(0xff3DDEA5),
                  borderRadius: BorderRadius.circular(130.r),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: text(
                    context,
                    "Basic Information",
                    79.sp,
                    AppColors.customWhite,
                    bold: false,
                  ),
                ),
              ),
              Container(
                width: AppSizes.dynamicWidth(context, 0.15),
                height: AppSizes.dynamicHeight(context, 0.04),
                decoration: BoxDecoration(
                    color: const Color(0xffC4C4C4),
                    borderRadius: BorderRadius.circular(20)),
                child: Align(
                  alignment: Alignment.center,
                  child: textWidget(
                    "Edit",
                    FontWeight.w600,
                    0xff3DDEA5,
                    79.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.only(
              left: AppSizes.dynamicWidth(context, 0.02),
              // top: AppSizes.dynamicHeight(context, 0.01),
            ),
            width: AppSizes.dynamicWidth(context, 0.9),
           height: AppSizes.dynamicHeight(context, 0.11),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 2,
                color: const Color(0xffC4C4C4),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textWidget(
                  "Name",
                  FontWeight.w300,
                  0xff7d7d7d,
                  65.sp,
                ),
                SizedBox(
                  height: AppSizes.dynamicHeight(context, 0.02),
                ),
                textWidget(
                  "Sakib  Abdullah",
                  FontWeight.w600,
                  0xff7d7d7d,
                 75.sp,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: AppSizes.dynamicWidth(context, 0.02),
                  top: AppSizes.dynamicHeight(context, 0.01),
                ),
                height: AppSizes.dynamicHeight(context, 0.11),
                width: AppSizes.dynamicWidth(context, 0.4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 2,
                    color: const Color(0xffC4C4C4),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: textWidget(
                        "Division",
                        FontWeight.w300,
                        0xff7d7d7d,
                        65.sp,
                      ),
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
                          child: Text(
                            items,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 65.sp,
                            ),
                          ),
                        );
                      }).toList(),
                       underline: SizedBox(),
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
              Container(
                padding: EdgeInsets.only(
                  left: AppSizes.dynamicWidth(context, 0.02),
                  top: AppSizes.dynamicHeight(context, 0.01),
                ),
               height: AppSizes.dynamicHeight(context, 0.11),
                width: AppSizes.dynamicWidth(context, 0.4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 2,
                    color: const Color(0xffC4C4C4),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textWidget(
                      "Contact Number",
                      FontWeight.w300,
                      0xff7d7d7d,
                     65.sp,
                    ),
                    SizedBox(
                      height: AppSizes.dynamicHeight(context, 0.02),
                    ),
                    textWidget(
                      "01765646564",
                      FontWeight.w600,
                      0xff7d7d7d,
                      75.sp,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.only(
              left: AppSizes.dynamicWidth(context, 0.02),
              top: AppSizes.dynamicHeight(context, 0.01),
            ),
           height: AppSizes.dynamicHeight(context, 0.11),
            width: AppSizes.dynamicWidth(context, 0.9),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 2,
                color: const Color(0xffC4C4C4),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: textWidget(
                    "Gender",
                    FontWeight.w300,
                    0xff7d7d7d,
                   65.sp,
                  ),
                ),
                DropdownButton(
                  iconDisabledColor: const Color(0xff11B990),
                  // Initial Value
                  value: dropdownvalue,
                  isExpanded: true,
                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(
                        items,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 75.sp,
                        ),
                      ),
                    );
                  }).toList(),
                   underline: SizedBox(),
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
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.only(
              left: AppSizes.dynamicWidth(context, 0.02),
              // top: AppSizes.dynamicHeight(context, 0.01),
            ),
            width: AppSizes.dynamicWidth(context, 0.9),
           height: AppSizes.dynamicHeight(context, 0.11),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 2,
                color: const Color(0xffC4C4C4),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textWidget(
                  "Email",
                  FontWeight.w300,
                  0xff7d7d7d,
                  65.sp,
                ),
                SizedBox(
                  height: AppSizes.dynamicHeight(context, 0.02),
                ),
                textWidget(
                  "sakib.abdullah@gmail.com",
                  FontWeight.w600,
                  0xff7d7d7d,
                  75.sp,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.only(
              left: AppSizes.dynamicWidth(context, 0.02),
              top: AppSizes.dynamicHeight(context, 0.01),
            ),
            width: AppSizes.dynamicWidth(context, 0.9),
           height: AppSizes.dynamicHeight(context, 0.11),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 2,
                color: const Color(0xffC4C4C4),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textWidget(
                  "Contact Number",
                  FontWeight.w300,
                  0xff7d7d7d,
                  65.sp,
                ),
                SizedBox(
                  height: AppSizes.dynamicHeight(context, 0.02),
                ),
                textWidget(
                  "01765646564",
                  FontWeight.w600,
                  0xff7d7d7d,
                 75.sp,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget greyWidget2() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffF1F1F1),
        borderRadius: BorderRadius.circular(90.r),
      ),
      padding: EdgeInsets.only(
        left: AppSizes.dynamicHeight(context, 0.02),
        right: AppSizes.dynamicHeight(context, 0.02),
        top: AppSizes.dynamicHeight(context, 0.03),
        bottom: AppSizes.dynamicHeight(context, 0.03),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: AppSizes.dynamicWidth(context, 0.45),
                height: AppSizes.dynamicHeight(context, 0.04),
                decoration: BoxDecoration(
                  color: const Color(0xff3DDEA5),
                  borderRadius: BorderRadius.circular(130.r),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: text(
                    context,
                    "Education",
                    79.sp,
                    AppColors.customWhite,
                    bold: false,
                  ),
                ),
              ),
              Container(
                width: AppSizes.dynamicWidth(context, 0.15),
                height: AppSizes.dynamicHeight(context, 0.04),
                decoration: BoxDecoration(
                    color: const Color(0xffC4C4C4),
                    borderRadius: BorderRadius.circular(20)),
                child: Align(
                  alignment: Alignment.center,
                  child: textWidget(
                    "Edit",
                    FontWeight.w600,
                    0xff3DDEA5,
                    79.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.only(
              left: AppSizes.dynamicWidth(context, 0.02),
              // top: AppSizes.dynamicHeight(context, 0.01),
            ),
            width: AppSizes.dynamicWidth(context, 0.9),
           height: AppSizes.dynamicHeight(context, 0.11),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 2,
                color: const Color(0xffC4C4C4),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textWidget(
                  "Current Instituite",
                  FontWeight.w300,
                  0xff7d7d7d,
                  65.sp,
                ),
                SizedBox(
                  height: AppSizes.dynamicHeight(context, 0.02),
                ),
                textWidget(
                  "Maple Leaf International School and College",
                  FontWeight.w600,
                  0xff7d7d7d,
                 75.sp,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.only(
              left: AppSizes.dynamicWidth(context, 0.02),
              // top: AppSizes.dynamicHeight(context, 0.01),
            ),
            width: AppSizes.dynamicWidth(context, 0.9),
           height: AppSizes.dynamicHeight(context, 0.11),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 2,
                color: const Color(0xffC4C4C4),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: textWidget(
                    "Medium",
                    FontWeight.w300,
                    0xff7d7d7d,
                    65.sp,
                  ),
                ),
                DropdownButton(
                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),
                  isExpanded: true,
                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(
                        items,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize:75.sp,
                        ),
                      ),
                    );
                  }).toList(),
                   underline: SizedBox(),
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
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.only(
              left: AppSizes.dynamicWidth(context, 0.02),
              top: AppSizes.dynamicHeight(context, 0.01),
            ),
            width: AppSizes.dynamicWidth(context, 0.9),
           height: AppSizes.dynamicHeight(context, 0.11),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 2,
                color: const Color(0xffC4C4C4),
              ),
            ),
            //  SizedBox(
            //       height: AppSizes.dynamicHeight(context, 0.02),
            //     ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: textWidget(
                    "Gender",
                    FontWeight.w300,
                    0xff7d7d7d,
                   65.sp,
                  ),
                ),
                // SizedBox(
                //   height: AppSizes.dynamicHeight(context, 0.02),
                // ),
                DropdownButton(
                  iconDisabledColor: const Color(0xff11B990),
                  // Initial Value
                  value: dropdownvalue,
                  isExpanded: true,
                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(
                        items,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 75.sp,
                        ),
                      ),
                    );
                  }).toList(),
                   underline: SizedBox(),
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
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.only(
              left: AppSizes.dynamicWidth(context, 0.02),
              top: AppSizes.dynamicHeight(context, 0.01),
            ),
            width: AppSizes.dynamicWidth(context, 0.9),
           height: AppSizes.dynamicHeight(context, 0.11),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 2,
                color: const Color(0xffC4C4C4),
              ),
            ),
            //  SizedBox(
            //       height: AppSizes.dynamicHeight(context, 0.02),
            //     ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: textWidget(
                    "Class",
                    FontWeight.w300,
                    0xff7d7d7d,
                   65.sp,
                  ),
                ),
                DropdownButton(
                  iconDisabledColor: const Color(0xff11B990),
                  // Initial Value
                  value: dropdownvalue,
                  isExpanded: true,
                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(
                        items,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 75.sp,
                        ),
                      ),
                    );
                  }).toList(),
                   underline: SizedBox(),
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
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.only(
              left: AppSizes.dynamicWidth(context, 0.02),
              top: AppSizes.dynamicHeight(context, 0.01),
            ),
            width: AppSizes.dynamicWidth(context, 0.9),
           height: AppSizes.dynamicHeight(context, 0.11),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 2,
                color: const Color(0xffC4C4C4),
              ),
            ),
            //  SizedBox(
            //       height: AppSizes.dynamicHeight(context, 0.02),
            //     ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: textWidget(
                    "Background",
                    FontWeight.w300,
                    0xff7d7d7d,
                   65.sp,
                  ),
                ),
                DropdownButton(
                  iconDisabledColor: const Color(0xff11B990),
                  // Initial Value
                  value: dropdownvalue,
                  isExpanded: true,
                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(
                        items,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize:75.sp,
                        ),
                      ),
                    );
                  }).toList(),
                   underline: SizedBox(),
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
    );
  }

  Widget greyWidget3() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffF1F1F1),
        borderRadius: BorderRadius.circular(90.r),
      ),
      padding: EdgeInsets.only(
        left: AppSizes.dynamicHeight(context, 0.02),
        right: AppSizes.dynamicHeight(context, 0.02),
        top: AppSizes.dynamicHeight(context, 0.03),
        bottom: AppSizes.dynamicHeight(context, 0.03),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: AppSizes.dynamicWidth(context, 0.45),
                height: AppSizes.dynamicHeight(context, 0.04),
                decoration: BoxDecoration(
                  color: const Color(0xff3DDEA5),
                  borderRadius: BorderRadius.circular(130.r),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: text(
                    context,
                    "Account Details",
                    79.sp,
                    AppColors.customWhite,
                    bold: false,
                  ),
                ),
              ),
              Container(
                width: AppSizes.dynamicWidth(context, 0.15),
                height: AppSizes.dynamicHeight(context, 0.04),
                decoration: BoxDecoration(
                    color: const Color(0xffC4C4C4),
                    borderRadius: BorderRadius.circular(20)),
                child: Align(
                  alignment: Alignment.center,
                  child: textWidget(
                    "Edit",
                    FontWeight.w600,
                    0xff3DDEA5,
                    79.sp,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: AppSizes.dynamicHeight(context, 0.02)),
          // SizedBox(
          //   width: 20.w,
          // ),
          textWidget(
            "Change Password",
            FontWeight.w600,
            0xff3DDEA5,
            60.sp,
          ),
          SizedBox(height: AppSizes.dynamicHeight(context, 0.02)),
          Container(
            padding: EdgeInsets.only(
              left: AppSizes.dynamicWidth(context, 0.02),
              top: AppSizes.dynamicHeight(context, 0.01),
            ),
            width: AppSizes.dynamicWidth(context, 0.9),
           height: AppSizes.dynamicHeight(context, 0.11),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 2,
                color: const Color(0xffC4C4C4),
              ),
            ),
            //  SizedBox(
            //       height: AppSizes.dynamicHeight(context, 0.02),
            //     ),
            child: textWidget(
              "Current Password",
              FontWeight.w300,
              0xff7d7d7d,
             75.sp,
            ),
          ),
          SizedBox(height: AppSizes.dynamicHeight(context, 0.02)),

          Container(
            padding: EdgeInsets.only(
              left: AppSizes.dynamicWidth(context, 0.02),
              top: AppSizes.dynamicHeight(context, 0.01),
            ),
            width: AppSizes.dynamicWidth(context, 0.9),
           height: AppSizes.dynamicHeight(context, 0.11),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 2,
                color: const Color(0xffC4C4C4),
              ),
            ),
            //  SizedBox(
            //       height: AppSizes.dynamicHeight(context, 0.02),
            //     ),
            child: textWidget(
              "New Password",
              FontWeight.w300,
              0xff7d7d7d,
              75.sp,
            ),
          ),
        ],
      ),
    );
  }

  Widget greyWidget4() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffF1F1F1),
        borderRadius: BorderRadius.circular(90.r),
      ),
      padding: EdgeInsets.only(
        left: AppSizes.dynamicHeight(context, 0.02),
        right: AppSizes.dynamicHeight(context, 0.02),
        top: AppSizes.dynamicHeight(context, 0.03),
        bottom: AppSizes.dynamicHeight(context, 0.03),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: AppSizes.dynamicWidth(context, 0.3),
                height: AppSizes.dynamicHeight(context, 0.04),
                decoration: BoxDecoration(
                  color: const Color(0xff3DDEA5),
                  borderRadius: BorderRadius.circular(130.r),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: text(
                    context,
                    "Attachments",
                    79.sp,
                    AppColors.customWhite,
                    bold: false,
                  ),
                ),
              ),
              Container(
                width: AppSizes.dynamicWidth(context, 0.15),
                height: AppSizes.dynamicHeight(context, 0.04),
                decoration: BoxDecoration(
                    color: const Color(0xffC4C4C4),
                    borderRadius: BorderRadius.circular(20)),
                child: Align(
                  alignment: Alignment.center,
                  child: textWidget(
                    "Edit",
                    FontWeight.w600,
                    0xff3DDEA5,
                    79.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: AppSizes.dynamicHeight(context, 0.02)),
          textWidget(
            "Student ID",
            FontWeight.w600,
            0xff747474,
            65.sp,
          ),
          SizedBox(height: AppSizes.dynamicHeight(context, 0.02)),
          Container(
            // height: AppSizes.dynamicWidth(context, 0.09),
            width: AppSizes.dynamicWidth(context, 0.9),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2, color: Color(0xffC4C4C4)),
            ),
            // child: textWidget(
            //   "Current Password",
            //   FontWeight.w300,
            //   0xff7d7d7d,
            //   12,
            // ),
            child: Container(
              width: AppSizes.dynamicWidth(context, 0.7),
              // height: AppSizes.dynamicHeight(context, 0.03),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                // color: AppColors.customGrey,
              ),
              padding:
                  EdgeInsets.only(left: AppSizes.dynamicWidth(context, 0.01)),
              child: Align(
                alignment: Alignment.center,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Attachment...",
                      hintStyle: TextStyle(
                        color: const Color(0xff747474),
                        fontSize: 65.sp,
                      ),
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      suffixIcon: const Icon(
                        Icons.attach_file,
                        color: Color(0xff3DDEA5),
                      )),
                ),
              ),
            ),
          ),
          SizedBox(height: AppSizes.dynamicHeight(context, 0.02)),
        ],
      ),
    );
  }
}
