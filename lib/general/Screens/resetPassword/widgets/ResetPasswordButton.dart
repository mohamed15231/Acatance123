part of 'ResetPasswordWidgetsImports.dart';

class ResetPasswordButton extends StatelessWidget {
  const ResetPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onPressed: () {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (_) => const Login(),
            ),
            (route) => false);
      },
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
      text: 'Submit',
      width: 150,
    );
  }
}
