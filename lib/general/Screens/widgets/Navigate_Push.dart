
part of 'Widgets_Imports.dart';
class Navigate_Push {
  static Future navigate({
    required BuildContext context,
    required Widget page,
  }) {
    return Navigator.push(
        context, MaterialPageRoute(builder: (_) => page));
  }
}
