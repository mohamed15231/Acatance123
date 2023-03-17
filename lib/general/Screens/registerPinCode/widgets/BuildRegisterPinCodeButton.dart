part of 'RegisterPinCodeWidgetsImports.dart';

class BuildRegisterPinCodeButton extends StatelessWidget {
  const BuildRegisterPinCodeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onPressed: (){
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (_) => const ForgetPassPinCode()),
        // );
      },
      margin: const EdgeInsets.symmetric(vertical: 20),
      text: 'Confirm',
    );
  }
}
