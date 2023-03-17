part of'ForgetPasswordWidgetsImports.dart';

class BuildForgetPasswordButton extends StatelessWidget {
  const BuildForgetPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const ForgetPassPinCode()),
        );
      },
      margin: const EdgeInsets.symmetric(vertical: 20),
      text: 'Send code',
    );
  }
}
