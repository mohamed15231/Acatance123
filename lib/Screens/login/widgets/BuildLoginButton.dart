part of 'LoginWidgetsImports.dart';

class BuildLoginButton extends StatelessWidget {
  const BuildLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onTap: (){},
      margin: const EdgeInsets.symmetric(vertical: 10),
      title: 'Login',
    );
  }
}
