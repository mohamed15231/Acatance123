part of 'LoginWidgetsImports.dart';

class BuildLoginForm extends StatelessWidget {
  const BuildLoginForm({Key? key, required this.loginData}) : super(key: key);
  final LoginData loginData;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginData.formKey,
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          child: Column(
            children:  [
              CustomInputFormField(
                controller: loginData.idController,
                labeltxt: 'User Id',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomInputFormField(
                controller: loginData.passwordController,
                secure: true,
                labeltxt: 'Password',
              ),
            ],
          ),
        )
    );
  }
}
