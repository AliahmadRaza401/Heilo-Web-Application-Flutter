import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/student/drawer/student_drawer.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';

import 'studentChatMain.dart';

final GlobalKey<ScaffoldState> studentScafoldKey = GlobalKey();

class StudentInboxMobile extends StatefulWidget {
  const StudentInboxMobile({Key? key}) : super(key: key);

  @override
  State<StudentInboxMobile> createState() => _StudentInboxMobileState();
}

class _StudentInboxMobileState extends State<StudentInboxMobile> {
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
      body: Container(
        padding: EdgeInsets.only(
          top: 3.h,
          right: AppSizes.dynamicWidth(context, 0.03),
          left: AppSizes.dynamicWidth(context, 0.03),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 30.h,
              ),

              // width: 594.w,
              height: 60.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: AppColors.customGrey,
              ),
              // padding: EdgeInsets.only(left: 12),
              child: TextFormField(
                decoration: const InputDecoration(
                    // hintText: "You phone number here...",
                    border: InputBorder.none,
                    fillColor: Colors.white,
                    suffixIcon: Icon(Icons.search)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 30.h,
              ),
              child: text(
                context,
                'All Messages ( 41)',
                18.0,
                AppColors.greyText,
                bold: false,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                margin: EdgeInsets.only(
                  top: 30.h,
                ),
                child: Column(
                  children: [
                    messageWidget(),
                    SizedBox(
                      height: 15.h,
                    ),
                    messageWidget(),
                    SizedBox(
                      height: 15.h,
                    ),
                    messageWidget(),
                    SizedBox(
                      height: 15.h,
                    ),
                    messageWidget(),
                    SizedBox(
                      height: 15.h,
                    ),
                    messageWidget(),
                      SizedBox(
                      height: 15.h,
                    ),
                    messageWidget(),
                    SizedBox(
                      height: 15.h,
                    ),
                    messageWidget(),
                    SizedBox(
                      height: 15.h,
                    ),
                    messageWidget(),
                  ],
                ),
              ),
            ),
            // Container(
            //   margin: EdgeInsets.only(
            //     top: 88.h,
            //     left: 33.w,
            //   ),
            //   child: Column(
            //     // mainAxisAlignment: MainAxisAlignment.start,
            //     // crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Container(
            //         height: 57.h,
            //         width: 487.w,
            //         child: ListTile(
            //           leading: Container(
            //             height: 54.h,
            //             width: 54.w,
            //             // margin: EdgeInsets.only(
            //             //   left: 20.w,
            //             // ),
            //             decoration: const BoxDecoration(
            //               shape: BoxShape.circle,
            //               image: DecorationImage(
            //                 image: AssetImage(
            //                   "assets/png/wp2398385 1.png",
            //                 ),
            //               ),
            //             ),
            //           ),
            //           title: text(
            //               context, 'Ruhul Tusar', 18.0, AppColors.customBlack),
            //           subtitle: text(
            //             context,
            //             'Maple Leaf International School',
            //             13.0,
            //             AppColors.greyText,
            //           ),
            //         ),
            //       ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         children: [
            //           Container(
            //             height: 109.h,
            //             width: 453.w,
            //             margin: EdgeInsets.only(
            //               top: 30.h,
            //               left: 20.w,
            //             ),
            //             child: ListTile(
            //               leading: Container(
            //                 height: 54.h,
            //                 width: 54.w,
            //                 // margin: EdgeInsets.only(
            //                 //   left: 20.w,
            //                 // ),
            //                 decoration: const BoxDecoration(
            //                   shape: BoxShape.circle,
            //                   image: DecorationImage(
            //                     image: AssetImage(
            //                       "assets/png/wp2398385 1.png",
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //               // title: text(context, 'Ruhul Tusar', 18.0,
            //               //     AppColors.customBlack),
            //               subtitle: Container(
            //                 padding: EdgeInsets.only(
            //                   left: 18.w,
            //                   right: 18.w,
            //                   top: 16.h,
            //                   bottom: 16.h,
            //                 ),
            //                 decoration: BoxDecoration(
            //                     borderRadius: BorderRadius.circular(18),
            //                     color: Color(0xffF8F8F8)),
            //                 child: text(
            //                   context,
            //                   'Dear Sir, I would like to study the genetics part of biology. To be precise the DNA replication. Can you help me?',
            //                   14.0,
            //                   AppColors.greyText,
            //                   bold: false,
            //                 ),
            //               ),
            //             ),
            //           )
            //         ],
            //       ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.end,
            //         children: [
            //           Container(
            //             height: 109.h,
            //             width: 453.w,
            //             margin: EdgeInsets.only(
            //               top: 5.h,
            //               left: 20.w,
            //             ),
            //             child: ListTile(
            //               leading: Container(
            //                 height: 54.h,
            //                 width: 54.w,
            //                 // margin: EdgeInsets.only(
            //                 //   left: 20.w,
            //                 // ),
            //                 decoration: const BoxDecoration(
            //                   shape: BoxShape.circle,
            //                   image: DecorationImage(
            //                     image: AssetImage(
            //                       "assets/png/wp2398385 1.png",
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //               // title: text(context, 'Ruhul Tusar', 18.0,
            //               //     AppColors.customBlack),
            //               subtitle: Container(
            //                 padding: EdgeInsets.only(
            //                   left: 18.w,
            //                   right: 18.w,
            //                   top: 16.h,
            //                   bottom: 16.h,
            //                 ),
            //                 decoration: BoxDecoration(
            //                     borderRadius: BorderRadius.circular(18),
            //                     color: Color(0xffB8F3DE)),
            //                 child: text(
            //                   context,
            //                   'Dear Sir, I would like to study the genetics part of biology. To be precise the DNA replication. Can you help me?',
            //                   14.0,
            //                   AppColors.greyText,
            //                   bold: false,
            //                 ),
            //               ),
            //             ),
            //           )
            //         ],
            //       ),
            //     ],
            //   ),
            // )
       
          ],
        ),
      ),
    );
  }

  Widget messageWidget() {
    return InkWell(
      onTap: () {
         Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => StudentChatMain()));
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xffF8F8F8),
          border: Border(
            left: BorderSide(
              width: 10.0,
              color: AppColors.customGrey,
            ),
            // bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
          ),
        ),
        // width: 585.w,
        // height: 88.h,
        padding: EdgeInsets.only(
          top: 11.h,
          left: 10.w,
        ),
        child: ListTile(
          leading: Container(
            height: AppSizes.dynamicHeight(context, 0.11),
            width: AppSizes.dynamicWidth(context, 0.15),
            // margin: EdgeInsets.only(
            //   left: 20.w,
            // ),
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    "assets/png/wp2398385 1.png",
                  ),
                  fit: BoxFit.cover,
                )),
          ),
          title: Row(
            children: [
              text(
                context,
                'Sakib Abdullah      ',
                18.0,
                AppColors.customBlack,
                bold: false,
              ),
              const Icon(
                Icons.circle,
                color: Colors.green,
              )
            ],
          ),
          subtitle: RichText(
            text: const TextSpan(
              text: 'Replied: Bhaiya physics er wave...',
              style: TextStyle(
                color: Color(0xffCFD8DC),
                fontSize: 11.0,
                fontWeight: FontWeight.w600,
              ),
              children: [
                TextSpan(
                  text: '     6:15 pm',
                  style: TextStyle(
                    color: Color(0xff444F55),
                    fontSize: 11.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
        //   child: Row(
        //     children: [
        //       Container(
        //         height: AppSizes.dynamicHeight(context, 0.11),
        //         width: AppSizes.dynamicWidth(context, 0.15),
        //         // margin: EdgeInsets.only(
        //         //   left: 20.w,
        //         // ),
        //         decoration: const BoxDecoration(
        //             shape: BoxShape.circle,
        //             image: DecorationImage(
        //               image: AssetImage(
        //                 "assets/png/wp2398385 1.png",
        //               ),
        //               fit: BoxFit.cover,
        //             )),
        //       ),
        //       SizedBox(
        //         width:  AppSizes.dynamicWidth(context, 0.01),
        //       ),
    
        //  RichText(
        //   text: TextSpan(
        //     text: 'Hello ',
        //     style: DefaultTextStyle.of(context).style,
        //     children: <TextSpan>[
        //       TextSpan(
        //           text: 'bold',
        //           style: TextStyle(fontWeight: FontWeight.bold)),
        //       TextSpan(text: ' world!'),
        //     ],
        //   ),
        // ),
        //       Column(
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           text(
        //             context,
        //             'Sakib Abdullah',
        //             18.0,
        //             AppColors.customBlack,
        //             bold: false,
        //           ),
        //           text(
        //             context,
        //             'Last seen at 5:32',
        //             14.0,
        //             AppColors.customGrey,
        //             bold: false,
        //           )
        //         ],
        //       ),
        //       SizedBox(
        //         width: 25.w,
        //       ),
        //       Column(
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           text(
        //             context,
        //             'You: Bhaiya kalke 5 tay set koro',
        //             14.0,
        //             AppColors.customGrey,
        //             bold: false,
        //           ),
        //           text(
        //             context,
        //             '(6:15 pm)',
        //             14.0,
        //             AppColors.customBlack,
        //             bold: true,
        //           )
        //         ],
        //       )
        //     ],
        //   ),
      ),
    );
  }
}
