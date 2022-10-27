part of 'RegisterImports.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  RegisterData registerData = RegisterData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers:
        [
          const BuildRegisterAppBar(),
          SliverList(delegate: SliverChildListDelegate(
              [
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      BuildRegisterForm(registerData: registerData),
                      const BuildRegisterButton(),
                    ],
                  ),
                )
              ]
          ))
        ],
      ),
    );
  }
}
