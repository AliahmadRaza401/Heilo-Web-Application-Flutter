import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/teacher/drawer/teacher_drawer.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';

class WithDraw extends StatelessWidget {
  const WithDraw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: teacherScafoldKey,
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
                teacherScafoldKey.currentState!.openDrawer();
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
      drawer: TeacherDrawer(),
      body: Container(
        height: AppSizes.dynamicHeight(context, 1),
        width: AppSizes.dynamicWidth(context, 1),
        child: Expanded(
            flex: 2,
            child: Container(
              height: double.infinity,
              // color: AppColors.blue,

              child: Column(
                children: [
                  Expanded(
                      child: Container(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(
                          bottom: AppSizes.dynamicHeight(context, .028)),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: AppColors.customWhite,
                            borderRadius: BorderRadius.circular(30.r)),
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              simpleContainer(context, '00.00'),
                              amoutEnter(context, 'Total Balance'),
                              amoutEnter(context, 'Amount to\nbewithdrawn'),
                              amoutEnter(context, 'Remaining \n Balance'),
                              amoutEnter(context, 'Transfer to '),
                              amoutEnter(context, 'Account number'),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            AppSizes.dynamicWidth(context, .2)),
                                    child: Container(
                                      height:
                                          AppSizes.dynamicHeight(context, 0.04),
                                      width:
                                          AppSizes.dynamicWidth(context, 0.3),
                                      decoration: BoxDecoration(
                                          color: AppColors.green,
                                          border: Border.all(
                                              color: AppColors.customBlack,
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: Center(
                                        child: text(
                                            context,
                                            'Withdraw',
                                            AppSizes.dynamicWidth(
                                                context, 0.03),
                                            AppColors.customWhite,
                                            bold: true),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
                ],
              ),
            )),
      ),
    );
  }

  Widget simpleContainer(
    BuildContext context,
    String amount,
  ) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: AppSizes.dynamicWidth(context, 0.9),
      height: AppSizes.dynamicHeight(context, 0.2),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/png/card1.png')),
        color: AppColors.green,
        borderRadius: BorderRadius.circular(30),
        // border: Border.all(color: AppColors.darkGrey, width: 2.w)
      ),
      padding: EdgeInsets.symmetric(
          horizontal: AppSizes.dynamicWidth(context, .06),
          vertical: AppSizes.dynamicHeight(context, .05)),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                text(
                  context, 'Enter amount\nto withrdraw',
                  AppSizes.dynamicWidth(context, .04), AppColors.customWhite,
                  // alignText: TextAlign.center
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: text(
                      context,
                      amount,
                      AppSizes.dynamicWidth(context, .05),
                      AppColors.customWhite,
                      bold: true,
                      alignText: TextAlign.center),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget amoutEnter(BuildContext context, String title) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: AppSizes.dynamicWidth(context, .2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          text(
            context, title, AppSizes.dynamicWidth(context, .03),
            Colors.black,
            // alignText: TextAlign.center
          ),
          Container(
            height: AppSizes.dynamicHeight(context, 0.04),
            width: AppSizes.dynamicWidth(context, 0.2),
            decoration: BoxDecoration(
                // border: Border.all(color: AppColors.lightGrey),
                color: Color(0xffEBEBEB),
                borderRadius: BorderRadius.circular(100)),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Align(
              alignment: Alignment.centerRight,
              child: TextField(
                cursorColor: AppColors.green,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(bottom: 10, left: 10)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
