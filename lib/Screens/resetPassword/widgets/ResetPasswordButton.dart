part of 'ResetPasswordWidgetsImports.dart';

class ResetPasswordButton extends StatelessWidget {
  const ResetPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onTap: (){
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (_) => const ForgetPassPinCode()),
        // );
      },
      margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 0),
      title: 'Submit',
    );
  }
}
