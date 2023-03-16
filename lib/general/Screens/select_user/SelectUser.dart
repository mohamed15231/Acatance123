part of 'SelectUserImports.dart';

class SelectUser extends StatefulWidget {
  const SelectUser({Key? key}) : super(key: key);

  @override
  State<SelectUser> createState() => _SelectUserState();
}

class _SelectUserState extends State<SelectUser> {
  SelectUserData selectUserData = SelectUserData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const BuildSelectUserImage(),
          const BuildSelectUserText(),
          BuildSelectUserButtons(selectUserData: selectUserData),
        ],
      ),
    );
  }
}
