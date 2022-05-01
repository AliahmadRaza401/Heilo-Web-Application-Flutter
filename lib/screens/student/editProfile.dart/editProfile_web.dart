import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/utils/config.dart';

class EditProfileWeb extends StatefulWidget {
  const EditProfileWeb({Key? key}) : super(key: key);

  @override
  State<EditProfileWeb> createState() => _EditProfileWebState();
}

class _EditProfileWebState extends State<EditProfileWeb> {
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
          Container(
            width: 526.w,
            height: 740.h,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(30.r),
            ),
            margin: EdgeInsets.only(left: 150.w),
            // padding: EdgeInsets.symmetric(
            //   vertical: 16.h,
            //   horizontal: 25.w,
            // ),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                // background image and bottom contents
                Column(
                  children: <Widget>[
                    Container(
                      height: 0.0,
                    ),
                    Positioned(
                      top:
                          150.0, // (background container size) - (circle height / 2)
                      child: CircleAvatar(
                        radius: 80.r,
                        backgroundImage: const AssetImage(
                          "assets/png/wp2398385 1.png",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.customGrey,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        padding: EdgeInsets.only(
                          top: 20.h,
                          left: 50.w,
                          right: 50.w,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(62),
                                border: Border.all(
                                    width: 0.5, color: Color(0xffC4C4C4)),
                              ),
                              child: textWidget(
                                "Sakib Abdullah",
                                FontWeight.w600,
                                0xff747474,
                                18,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(62),
                                border: Border.all(
                                    width: 0.5, color: Color(0xffC4C4C4)),
                              ),
                              child: textWidget(
                                "Maple Leaf International School and College",
                                FontWeight.w300,
                                0xff747474,
                                14,
                              ),
                            ),
                            SizedBox(
                              height: 70.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 190.w,
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                    bottom: 5,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color(0xff48A6F0),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: textWidget(
                                      "Tutions completed",
                                      FontWeight.w600,
                                      0xffffffff,
                                      14,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      top: 6, bottom: 6, left: 10, right: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22),
                                    border: Border.all(
                                      width: 0.5,
                                      color: Color(0xffC4C4C4),
                                    ),
                                  ),
                                  child: textWidget(
                                    "150",
                                    FontWeight.w600,
                                    0xff7D7D7D,
                                    14,
                                  ),
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
                                  width: 190.w,
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                    bottom: 5,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color(0xffA279E6),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: textWidget(
                                      "Tutors referred",
                                      FontWeight.w600,
                                      0xffffffff,
                                      14,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      top: 6, bottom: 6, left: 10, right: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22),
                                    border: Border.all(
                                      width: 0.5,
                                      color: Color(0xffC4C4C4),
                                    ),
                                  ),
                                  child: textWidget(
                                    "150",
                                    FontWeight.w600,
                                    0xff7D7D7D,
                                    14,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 60.h,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 6, bottom: 6, left: 10, right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                border: Border.all(
                                  width: 0.5,
                                  color: Color(0xffC4C4C4),
                                ),
                              ),
                              child: textWidget(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque facilisis aenean et elementum massa. Egestas tempor viverra adipiscing ipsum, proin nunc vitae ultrices nec. Tellus in viverra pretium feugiat sit interdum ultricies. Facilisi vulputate mauris cras sapien, scelerisque ullamcorper aliquam duis viverra.",
                                FontWeight.w300,
                                0xff7000000,
                                14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                // Profile image
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
          color: Color(0xffE0E0E0), borderRadius: BorderRadius.circular(30.r)),
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
          color: AppColors.customGrey, borderRadius: BorderRadius.circular(10)),
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
          color: AppColors.customGrey, borderRadius: BorderRadius.circular(10)),
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
          color: AppColors.customGrey, borderRadius: BorderRadius.circular(10)),
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
