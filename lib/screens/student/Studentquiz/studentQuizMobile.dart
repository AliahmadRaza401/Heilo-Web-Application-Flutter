import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/student/drawer/student_drawer.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';

final GlobalKey<ScaffoldState> studentScafoldKey = GlobalKey();

class StudentQuizMobile extends StatefulWidget {
  const StudentQuizMobile({Key? key}) : super(key: key);

  @override
  State<StudentQuizMobile> createState() => _StudentQuizMobileState();
}

class _StudentQuizMobileState extends State<StudentQuizMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            left: AppSizes.dynamicWidth(context, 0.01),
            right: AppSizes.dynamicWidth(context, 0.01),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: AppSizes.dynamicHeight(context, 0.05)),
              Container(
                padding:
                    EdgeInsets.only(left: AppSizes.dynamicWidth(context, 0.03)),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: text(
                    context,
                    'TEST YOURSELF KNOW YOURSELF',
                    95.sp,
                    AppColors.greenDark,
                    bold: true,
                  ),
                ),
              ),
              SizedBox(height: AppSizes.dynamicHeight(context, 0.05)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 65.h,
                    // width: 510.w,
                    // width: AppSizes.dynamicWidth(context, 1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(160.w),
                      border: Border.all(
                          color: AppColors.lightgreyborder, width: 4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: AppSizes.dynamicWidth(context, 0.6),
                          padding: EdgeInsets.only(
                            left: 50.w,
                            bottom: 10.h,
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter Your Subject',
                                hintStyle: TextStyle(
                                  color: AppColors.greyText,
                                )),
                          ),
                        ),
                        Container(
                            width: AppSizes.dynamicWidth(context, 0.3),
                            height: 65.h,
                            decoration: BoxDecoration(
                                color: AppColors.greenDark,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(180.r),
                                  bottomRight: Radius.circular(180.r),
                                  bottomLeft: Radius.circular(180.r),
                                )),
                            child: Center(
                              child: text(
                                context,
                                "SEARCH",
                                65.sp,
                                AppColors.customWhite,
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Wrap(
                spacing: 20.w,
                runSpacing: 20.h,
                children: [
                  courseCard(context),
                  courseCard(context),
                  courseCard(context),
                  courseCard(context),
                  courseCard(context),
                  courseCard(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget courseCard(context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(AppSizes.dynamicHeight(context, 0.01)),
        width: AppSizes.dynamicWidth(context, 0.47),
        height: AppSizes.dynamicHeight(context, 0.35),
        decoration: BoxDecoration(
          color: AppColors.lightgreyborder,
          borderRadius: BorderRadius.circular(120.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: AppSizes.dynamicHeight(context, 0.2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(120.r),
                image: const DecorationImage(
                  image: AssetImage("assets/png/bluebook.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: AppSizes.dynamicHeight(context, 0.01),
            ),
            Container(
              // width: 250.w,
              // color: Colors.amber,
              padding: EdgeInsets.only(
                left: AppSizes.dynamicWidth(context, 0.01),
                right: AppSizes.dynamicWidth(context, 0.01),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/png/bookicon.png',
                      fit: BoxFit.cover,
                      height: AppSizes.dynamicHeight(context, 0.04),
                      width: AppSizes.dynamicWidth(context, 0.07)),
                  Wrap(children: [
                    text(context, "Chapter-1 : Speed", 65.sp, Colors.black)
                  ]),
                ],
              ),
            ),
            SizedBox(
              height: AppSizes.dynamicHeight(context, 0.01),
            ),
            Wrap(
              children: [
                text(context, "Question: 25", 75.sp, const Color(0xff6F6F6F)),
              ],
            ),
            Wrap(
              children: [
                text(context, "Time : 25 minutes", 75.sp,
                    const Color(0xff6F6F6F)),
              ],
            ),

            //  SizedBox(
            //   height: AppSizes.dynamicHeight(context, 0.01),
            // ),
          ],
        ),
      ),
    );
  }
}
