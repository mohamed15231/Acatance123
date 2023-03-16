part of 'PinCodeWidgetsImports.dart';

class BuildForgetPassPinCode extends StatelessWidget {
  const BuildForgetPassPinCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: PinCodeTextField(
        appContext: context,
        length: 4,
        onChanged: (value){
        },
        keyboardType: TextInputType.number,
        pinTheme: PinTheme(
          activeColor: AppColors.primary,
          inactiveColor: Colors.grey,
          selectedColor: AppColors.primary,
          activeFillColor: AppColors.primary,
          selectedFillColor: AppColors.primary,
          fieldHeight: 57,
          fieldWidth: 51,
          shape: PinCodeFieldShape.circle,
        ),

      ),
    );
  }
}
