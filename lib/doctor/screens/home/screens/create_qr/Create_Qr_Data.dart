part of 'Create_Qr_Imports.dart';

enum ChooseDepartmentEnum { IT, Cs, Is }


enum ChooseWeekNumberEnum {
  First,
  Second,
  Third,
  Fourth,
  Fifth,
  Sixth,
  Seventh
}

class CreateQrData {
  static String IdDepartment({required ChooseDepartmentEnum chooseDepartment}) {
    String id;
    switch (chooseDepartment) {
      case ChooseDepartmentEnum.Cs:
        id = "4fb11d7b-6988-4b5a-a92a-c2823144c3e5";
        break;

      case ChooseDepartmentEnum.IT:
        id = "ea674992-bc1c-48ef-9398-3e2e888bd450";
        break;

      case ChooseDepartmentEnum.Is:
        id = "14dfa133-d2a6-427e-aae2-62f6abcac9d9";
        break;
    }
    return id;
  }

  static String weekNumber(
      {required ChooseWeekNumberEnum chooseWeekNumberEnum}) {
    String number;
    switch (chooseWeekNumberEnum) {
      case ChooseWeekNumberEnum.First:
        number = "1";
        break;

      case ChooseWeekNumberEnum.Second:
        number = "2";
        break;

      case ChooseWeekNumberEnum.Third:
        number = "3";
        break;

      case ChooseWeekNumberEnum.Fourth:
        number = "4";
        break;
      case ChooseWeekNumberEnum.Fifth:
        number = "5";
        break;
      case ChooseWeekNumberEnum.Sixth:
        number = "6";
        break;
      case ChooseWeekNumberEnum.Seventh:
        number = "7";
        break;
    }
    return number;
  }

}
