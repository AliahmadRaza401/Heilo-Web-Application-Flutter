// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/admin/BarChart/bar_chart.dart';
import 'package:heilo/screens/admin/Dashboard/dash_board_mobile.dart';
import 'package:heilo/screens/admin/admin_drawer.dart';
import 'package:heilo/utils/config.dart';

import '../../../utils/dynamic_sizes.dart';
import '../../../widgets/text_widget.dart';

class ProfileMobile extends StatefulWidget {
  const ProfileMobile({Key? key}) : super(key: key);

  @override
  State<ProfileMobile> createState() => _ProfileMobileState();
}

class _ProfileMobileState extends State<ProfileMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: adminScafoldKey,
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
                adminScafoldKey.currentState!.openDrawer();
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
      drawer: AdminDrawer(),
      body: Container(
          decoration: BoxDecoration(
            color: AppColors.customWhite,
            borderRadius: BorderRadius.circular(30.r),
          ),
          padding: EdgeInsets.only(left: 5),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: AppSizes.dynamicWidth(context,.98),
                  height: AppSizes.dynamicHeight(context, .2),
                  decoration: BoxDecoration(
                      color: AppColors.customWhite,
                      border: Border.all(color: AppColors.green),
                      borderRadius: BorderRadius.circular(30.r)),
                  padding: EdgeInsets.symmetric(
                      horizontal: AppSizes.dynamicWidth(context, .02)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Spacer(flex: 1,),
                          CircleAvatar(
                            backgroundColor: AppColors.green,
                            radius: AppSizes.dynamicHeight(context, .04),
                            child: CircleAvatar(
                              radius: AppSizes.dynamicHeight(context, .035),
                              backgroundImage:
                                  AssetImage('assets/png/charles.png'),
                            ),
              
                          ),
                          Spacer(flex: 3),
              
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          text(
                              context,
                              'Zarin Tajnim ',
                              AppSizes.dynamicWidth(context, .02),
                              AppColors.darkGrey,
                              bold: true),
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: text(
                                context,
                                'Maple Leaf International School and College',
                                AppSizes.dynamicWidth(context, .017),
                                AppColors.greyText),
                          ),
                          Spacer(),
                          text(
                              context,
                              'Address',
                              AppSizes.dynamicWidth(context, .02),
                              AppColors.green),
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: text(
                                context,
                                '274, sher-e-bangla road, Dhaka- 1209',
                                AppSizes.dynamicWidth(context, .015),
                                AppColors.greyText),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  text(
                                      context,
                                      'Gender',
                                      AppSizes.dynamicWidth(
                                          context, .02),
                                      AppColors.green),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 2),
                                    child: text(
                                        context,
                                        'Femalr ',
                                        AppSizes.dynamicWidth(
                                            context, .02),
                                        AppColors.greyText),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 2),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    text(
                                        context,
                                        'Join Date',
                                        AppSizes.dynamicWidth(
                                            context, .02),
                                        AppColors.green),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0),
                                      child: text(
                                          context,
                                          '11/09/2020',
                                          AppSizes.dynamicWidth(
                                              context, .009),
                                          AppColors.greyText),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                        ],
                      ),
                      Spacer(
                        flex: 9,
                      ),
                      Column(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                        children: [
                          smallContainer(
                              'Email', 'sakib.abdullah@gmail.com'),
                          smallContainer(
                              'Contact Number', '01765646564'),
                          smallContainer('Medium', 'English Medium'),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: AppSizes.dynamicWidth(context, .98),
                  height: AppSizes.dynamicHeight(context, .1),
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.dynamicWidth(context, .018),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text(
                              context,
                              'TUITION AVAIL',
                              40.sp,
                              // AppSizes.dynamicWidth(context, .015),
                              AppColors.green),
                          boldPopinText(
                              '41',
                              65.sp,
              
                              // AppSizes.dynamicWidth(context, .018),
                              AppColors.darkGrey)
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text(
                              context,
                              'QUIZ APPEARED ',
                              40.sp,
              
                              // AppSizes.dynamicWidth(context, .015),
                              AppColors.green),
                          boldPopinText(
                              '25',
                              65.sp,
              
                              // AppSizes.dynamicWidth(context, .018),
                              AppColors.darkGrey)
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text(
                              context,
                              'TOTAL MONEY SPEND ',
                              40.sp,
              
                              // AppSizes.dynamicWidth(context, .015),
                              AppColors.darkGrey),
                          boldPopinText(
                              'TK. 2511',
                              65.sp,
                              // AppSizes.dynamicWidth(context, .018),
                              AppColors.green)
                        ],
                      ),
                    ],
                  ),
                ),
                upCommingSessions(),
                 AppSizes.heightBox(context, .02),

                      Container(
                        
                        height:AppSizes.dynamicHeight(context, .4),
                        padding: EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                            color: AppColors.lightGrey,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.r))),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                   EdgeInsets.symmetric(vertical: 5),
                              child: Container(
                                height: 20.h,
                                width: AppSizes.dynamicWidth(context, .8),
                                decoration: BoxDecoration(
                                    // border: Border.all(color: AppColors.green),
                                    color: AppColors.customWhite,
                                    borderRadius:
                                        BorderRadius.circular(100)),
                                padding:
                                    EdgeInsets.symmetric(horizontal: 10),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: TextField(
                                    cursorColor: AppColors.green,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        // suffixIcon: Icon(
                                        //   Icons.search,
                                        //   color: AppColors.greyText,
                                        // ),
                                        contentPadding: EdgeInsets.only(
                                            top: 5, left: 10)),
                                  ),
                                ),
                              ),
                            ),

                            Container(
                        height:AppSizes.dynamicHeight(context, .25),
                              child: ListView.builder(
                                  itemCount: 15,
                                  itemBuilder: ((context, index) {
                                    return searchResultsRow(
                                        'Ruhul Amin Tusar ',
                                        '01824696930',
                                        'writetusar@gmail.com',
                                        'active');
                                  })),
                            )
                          ],
                        ),
                      ),
              ],
            ),
          )),
    );
  }

    Widget upCommingSessions() {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: AppSizes.dynamicHeight(context, .4),
      width: size.width * .98,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
                height: size.height * .38,
                width: size.width * .98,
                decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.r),
                        bottomRight: Radius.circular(30.r),
                        topRight: Radius.circular(30.r))),
                padding:
                    EdgeInsets.only(top: 20, left: 2, right: 2, bottom: 10),
                child: ListView.builder(
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return detailsRowa();
                    })),
          ),
          Container(
            height: 31.h,
            width: 562.w,
            decoration: BoxDecoration(
                color: AppColors.customWhite,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(100),
                    bottomRight: Radius.circular(100))),
            child: Center(
              child: text(context, 'Upcoming Sessions', 10, AppColors.greyText),
            ),
          ),
         
        ],
      ),
    );
  }
   Widget detailsRowa() {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Container(
        width: size.width ,
        height: 31.h,
        decoration: BoxDecoration(
            color: AppColors.customWhite,
            borderRadius: BorderRadius.circular(100)),
        padding: EdgeInsets.symmetric(horizontal: 2),
        child: Row(
          children: [
            Container(
                height: 24.h,
                width: 257.w,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.green),
                    color: AppColors.customWhite,
                    borderRadius: BorderRadius.circular(100)),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child:
                      text(context, '27th July, 2021', 15.sp, AppColors.greyText),
                )),
            SizedBox(
              width: size.width * .002,
            ),
            VerticalDivider(
              color: AppColors.green,
            ),
            text(context, 'ID 11121', 30.sp, AppColors.greyText),
            VerticalDivider(
              color: AppColors.green,
            ),
            text(context, 'Ruhul Tusar',30.sp, AppColors.greyText),
            VerticalDivider(
              color: AppColors.green,
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: text(context, 'Topic- Polygons I Gerometry I Maths B',
                      30.sp, AppColors.greyText),
                ),
              ),
            ),
            VerticalDivider(
              color: AppColors.green,
            ),
            text(context, 'Time- 4:30-5.30 pm', 30.sp, AppColors.green),
          ],
        ),
      ),
    );
  }


  Widget smallContainer(String greenText, String greyText) {
    return Container(
      height: 40.h,
      width: 500.w,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.greyText),
          borderRadius: BorderRadius.circular(15.r)),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text(context, greenText, AppSizes.dynamicWidth(context, .015),
              AppColors.green),
          text(context, greyText, AppSizes.dynamicWidth(context, .015),
              AppColors.greyText),
        ],
      ),
    );
  }

 Widget searchResultsRow(String name, String id, String gmial, String status) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: size.width * .9,
        height: 37.h,
        decoration: BoxDecoration(
            color: AppColors.customWhite,
            borderRadius: BorderRadius.circular(30)),
        padding: EdgeInsets.only(left: 20, right: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    text(context, name, AppSizes.dynamicWidth(context, .02),
                        AppColors.customBlack,
                        bold: true),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: text(
                          context,
                          id,
                          AppSizes.dynamicWidth(context, .02),
                          AppColors.greyText),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: text(
                          context,
                          gmial,
                          AppSizes.dynamicWidth(context, .02),
                          AppColors.greyText),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 30.h,
              width: AppSizes.dynamicWidth(context, .2),
              decoration: BoxDecoration(
                  // border: Border.all(color: AppColors.green),
                  color: AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(100)),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: dropDownMobile(context, 'Active')
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     text(context, status, 10, AppColors.greyText),
              //     Icon(
              //       Icons.keyboard_arrow_down,
              //       size: 10,
              //       color: AppColors.green,
              //     ),
              //   ],
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
