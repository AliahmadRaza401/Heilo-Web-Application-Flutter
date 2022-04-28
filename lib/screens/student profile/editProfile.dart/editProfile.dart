import 'package:flutter/material.dart';
import 'package:heilo/screens/student%20profile/editProfile.dart/editProfile_Mobile.dart';
import 'package:heilo/screens/student%20profile/editProfile.dart/editProfile_web.dart';
import 'package:responsive_builder/responsive_builder.dart';


class EditProfile extends StatefulWidget {
  const EditProfile({ Key? key }) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      // color: Colors.amber,
      // width: AppSizes.dynamicWidth(context, 1),
      // height: AppSizes.dynamicHeight(context, 1),
     
      child: ScreenTypeLayout(
        mobile: EditProfileMobile(),
        tablet: EditProfileWeb(),
        desktop: EditProfileWeb(),
      ),
    );
  }
}