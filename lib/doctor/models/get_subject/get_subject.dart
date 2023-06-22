class Get_Subject_Model{
  List<Subjects>? subjects=[];
  Get_Subject_Model.fromJson(dynamic json) {
    if (json != null) {
      json.forEach((v) {
        subjects?.add(Subjects.fromJson(v));
      });
    }
  }
}

class Subjects{
  String? code;
  String? id;
  String? subjectName;
  String? deptId;

  Subjects.fromJson(dynamic json) {
    code = json['code'];
    id = json['id'];
    subjectName = json['name'];
    deptId = json['deptId'];
  }

}