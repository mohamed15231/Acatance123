part of 'RegisterWidgetsImports.dart';

class BuildRegisterButton extends StatelessWidget {
  const BuildRegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const RegisterPinCode()),
        );
      },
      margin: const EdgeInsets.symmetric(vertical: 40),
      text: 'Register',
    );
  }
}
