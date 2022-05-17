import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';
import 'package:heilo/widgets/top_iconavatar.dart';

class TeacherInboxWeb extends StatefulWidget {
  const TeacherInboxWeb({Key? key}) : super(key: key);

  @override
  State<TeacherInboxWeb> createState() => _TeacherInboxWebState();
}

class _TeacherInboxWebState extends State<TeacherInboxWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.r),
          ),
          padding: EdgeInsets.only(
            top: 3.h,
            right: 30.w,
            left: 61.w,
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 748.h,
                    width: 661.w,
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          width: 2.0,
                          color: AppColors.customGrey,
                        ),
                        // bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 30.h,
                          ),
                          width: 594.w,
                          height: 50.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: AppColors.customGrey,
                          ),
                          // padding: EdgeInsets.only(left: 12),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                // hintText: "Search here...",
                                border: InputBorder.none,
                                fillColor: Colors.white,
                                suffixIcon: Icon(
                                  Icons.search,
                                  size: 30,
                                )),
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
                        Container(
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
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 20.h,
                  left: 33.w,
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: AppSizes.dynamicWidth(context, 0.45),
                        // color: Colors.amber,
                        child: topIconAvatar(context)),
                    Container(
                      height: 57.h,
                      width: 487.w,
                      child: ListTile(
                        leading: Container(
                          height: 54.h,
                          width: 54.w,
                          // margin: EdgeInsets.only(
                          //   left: 20.w,
                          // ),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/png/wp2398385 1.png",
                              ),
                            ),
                          ),
                        ),
                        title: text(context, 'Ruhul Tusar', 18.0,
                            AppColors.customBlack),
                        subtitle: text(
                          context,
                          'Maple Leaf International School',
                          13.0,
                          AppColors.greyText,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 109.h,
                          width: 453.w,
                          margin: EdgeInsets.only(
                            top: 30.h,
                            left: 20.w,
                          ),
                          child: ListTile(
                            leading: Container(
                              height: 54.h,
                              width: 54.w,
                              // margin: EdgeInsets.only(
                              //   left: 20.w,
                              // ),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/png/wp2398385 1.png",
                                  ),
                                ),
                              ),
                            ),
                            // title: text(context, 'Ruhul Tusar', 18.0,
                            //     AppColors.customBlack),
                            subtitle: Container(
                              padding: EdgeInsets.only(
                                left: 18.w,
                                right: 18.w,
                                top: 16.h,
                                bottom: 16.h,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Color(0xffF8F8F8)),
                              child: text(
                                context,
                                'Dear Sir, I would like to study the genetics part of biology. To be precise the DNA replication. Can you help me?',
                                14.0,
                                AppColors.greyText,
                                bold: false,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 109.h,
                          width: 453.w,
                          margin: EdgeInsets.only(
                            top: 5.h,
                            left: 20.w,
                          ),
                          child: ListTile(
                            leading: Container(
                              height: 54.h,
                              width: 54.w,
                              // margin: EdgeInsets.only(
                              //   left: 20.w,
                              // ),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/png/wp2398385 1.png",
                                  ),
                                ),
                              ),
                            ),
                            // title: text(context, 'Ruhul Tusar', 18.0,
                            //     AppColors.customBlack),
                            subtitle: Container(
                              padding: EdgeInsets.only(
                                left: 18.w,
                                right: 18.w,
                                top: 16.h,
                                bottom: 16.h,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Color(0xffB8F3DE)),
                              child: text(
                                context,
                                'Dear Sir, I would like to study the genetics part of biology. To be precise the DNA replication. Can you help me?',
                                14.0,
                                AppColors.greyText,
                                bold: false,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Expanded(child: Container()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.file_present_outlined,
                          color: Color(0xff1BE59D),
                          size: 35,
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Container(
                          width: 670.w,
                          height: 50.h,
                          padding: EdgeInsets.only(
                            left: 30.w,
                            bottom: 10.h,
                          ),
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
                              hintText: "Write message",
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              // suffixIcon: Icon(Icons.search)
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        const Icon(
                          Icons.send,
                          color: Color(0xff1BE59D),
                          size: 35,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }

  Widget messageWidget() {
    return Container(
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
      width: 620.w,
      height: 88.h,
      padding: EdgeInsets.only(
        top: 11.h,
        left: 10.w,
      ),
      child: Row(
        children: [
          Container(
            height: 54.h,
            width: 54.w,
            // margin: EdgeInsets.only(
            //   left: 20.w,
            // ),
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    "assets/png/wp2398385 1.png",
                  ),
                )),
          ),
          SizedBox(
            width: 25.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text(
                context,
                'Sakib Abdullah',
                18.0,
                AppColors.customBlack,
                bold: false,
              ),
              text(
                context,
                'Last seen at 5:32',
                14.0,
                Color(0xffCFD8DC),
                bold: false,
              )
            ],
          ),
          SizedBox(
            width: 25.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text(
                context,
                'You: Bhaiya kalke 5 tay set koro',
                14.0,
                Color(0xffCFD8DC),
                bold: false,
              ),
              text(
                context,
                '(6:15 pm)',
                14.0,
                AppColors.customBlack,
                bold: true,
              )
            ],
          )
        ],
      ),
    );
  }
}
