part of 'PinCodeWidgetsImports.dart';

class BuildPinCodeButton extends StatelessWidget {
  const BuildPinCodeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const ResetPassword()),
        );
      },
      margin: const EdgeInsets.symmetric(vertical: 20),
      text: 'Submit',
      width: 150,
    );
  }
}
