// import 'package:cool_alert/cool_alert.dart';


// import '../utils/config.dart';

// Future successAlert (context ,response ,{function}) {
//   return  CoolAlert.show(
//       context: context,
//       lottieAsset: "assets/animations/success.json",
//       type: CoolAlertType.success,
//       title: "Success",
//       text: response,
//     backgroundColor: AppColors.customGreen,
//     confirmBtnColor: AppColors.customGreen,
//       animType: CoolAlertAnimType.scale,
//       onConfirmBtnTap: function == "" ? () {} : function,);
// }

// Future warningAlert (context ,response ,{function}) {
//   return  CoolAlert.show(
//     context: context,
//     type: CoolAlertType.warning,
//     title: "Alert",
//     text: response,
//     backgroundColor: AppColors.customGreen,
//     confirmBtnColor: AppColors.customGreen,
//     animType: CoolAlertAnimType.scale,
//     onConfirmBtnTap: function == "" ? () {} : function,);
// }

// Future errorAlert (context ,response ,{function,alert,titlecheck = false}) {
//   return  CoolAlert.show(
//     context: context,
//     type: CoolAlertType.error,
//     title: titlecheck ==  true ? alert :  "Error",
//     text: response,
//     backgroundColor: AppColors.customGreen,
//     confirmBtnColor: AppColors.customGreen,
//     animType: CoolAlertAnimType.scale,
//     onConfirmBtnTap: function == "" ? () {} : function,);
// }