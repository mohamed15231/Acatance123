part of 'Widgets_Imports.dart';

class FlutterToast{
  Future<bool?> toastShow({
    required String text,
    required ToastState state,
  }){
    return Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: chooseToastColor(state: state),
        textColor: Colors.white,
        fontSize: 16.0
    );

  }

  Color chooseToastColor( {
    required ToastState state,
  }){
    Color color;
    switch (state){
      case ToastState.SUCCESS:
        color= Colors.green;
        break;
      case ToastState.ERROR:
        color= Colors.red;
        break;
      case ToastState.WARNNING:
        color= Colors.amber;
        break;
    }
    return color;
  }
}



enum ToastState{SUCCESS,ERROR,WARNNING}

