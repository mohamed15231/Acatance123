part of'RegisterWidgetsImports.dart';

class BuildRegisterForm extends StatelessWidget {
  const BuildRegisterForm({Key? key, required this.registerData}) : super(key: key);
  final RegisterData registerData;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: registerData.formKey,
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          child: Column(
            children:  [
              CustomInputFormField(
                controller: registerData.nameController,
                hint: 'Full name',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomInputFormField(
                controller: registerData.idController,
                hint: 'Student Id',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomInputFormField(
                controller: registerData.nationalIdController,
                hint: 'National id',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomInputFormField(
                controller: registerData.emailController,
                hint: 'Email address',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomInputFormField(
                controller: registerData.passwordController,
                secure: true,
                hint: 'Password',
              ),
            ],
          ),
        )
    );
  }
}
