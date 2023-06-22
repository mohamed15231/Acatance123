part of 'Widgets_Imports.dart';

// import 'package:asz/res.dart';
// import 'package:asz/Screens/widgets/AppColors.dart';
// import 'package:asz/Screens/widgets/CustomText.dart';
// import 'package:flutter/material.dart';
//
// class CustomSlider extends StatefulWidget {
//   const CustomSlider(
//       {
//         Key? key,
//         required this.title,
//         required this.text,
//         required this.value,
//         required this.image,
//         required this.onChanged
//       }
//       ) : super(key: key);
//
//   final String? title;
//   final String? text;
//   final double? value;
//   final String? image;
//   final Function(double)? onChanged;
//   @override
//   State<CustomSlider> createState() => _CustomSliderState();
// }
//
// class _CustomSliderState extends State<CustomSlider> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 Image.asset('${widget.image}'),
//                 Container(
//                   alignment: Alignment.topRight,
//                   child: CustomText(
//                     title: widget.title,
//                     size: 14,
//                     fontWeight: FontWeight.w900,
//                   ),
//                 ),
//               ],
//             ),
//             CustomText(
//               title: widget.text,
//               size: 14,
//               fontWeight: FontWeight.w900,
//               color: AppColors.primary,
//             )
//           ],
//         ),
//         SliderTheme(
//           data: SliderThemeData(
//             thumbColor: AppColors.primary,
//             activeTrackColor: AppColors.primary,
//             valueIndicatorColor: AppColors.primary,
//             inactiveTrackColor: AppColors.formBgColor,
//             activeTickMarkColor: Colors.transparent,
//             inactiveTickMarkColor: Colors.transparent,
//           ),
//           child: Slider(
//             min: 0,
//             max: 200,
//             divisions: 200,
//             value: widget.value!,
//             label: widget.value!.round().toString(),
//             onChanged: widget.onChanged,
//           ),
//         ),
//       ],
//     );
//   }
// }
