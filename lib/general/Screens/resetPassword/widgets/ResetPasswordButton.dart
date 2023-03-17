part of 'ResetPasswordWidgetsImports.dart';

class ResetPasswordButton extends StatelessWidget {
  const ResetPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onTap: () {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (_) => const Login(),
            ),
            (route) => false);
      },
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
      title: 'Submit',
      width: 150,
    );
  }
}
