// part of 'ForgetPasswordWidgetsImports.dart';
//
// class ForgetPasswordPinCode extends StatelessWidget {
//   const ForgetPasswordPinCode({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(15),
//       child: PinCodeTextField(
//         appContext: context,
//         length: 5,
//         onChanged: (value){
//           print(value);
//         },
//         keyboardType: TextInputType.number,
//         pinTheme: PinTheme(
//           activeColor: AppColors.primary,
//           inactiveColor: Colors.grey,
//           selectedColor: AppColors.primary,
//
//           fieldHeight: 57,
//           fieldWidth: 51,
//           shape: PinCodeFieldShape.box,
//           borderRadius: BorderRadius.circular(6),
//
//
//         ),
//
//       ),
//     );
//   }
// }