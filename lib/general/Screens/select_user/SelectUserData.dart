part of 'SelectUserImports.dart';

class SelectUserData {

  // methods
  void onSelectDoctor(BuildContext context) {
    GlobalState.instance.set("type", 1);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => Login()),
    );

  }

  void onSelectStudent(BuildContext context) {
    GlobalState.instance.set("type", 2);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => Login()),
    );
  }

}
