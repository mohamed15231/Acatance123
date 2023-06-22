
part of 'Widgets_Imports.dart';
class Navigator_And_Replace {
  static Future navigate({
    required BuildContext context,
    required Widget page,
  }) {
    return Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => page));
  }
}
