
class DepartmentDescriptionModels {
  DepartmentDescriptionModels({
      this.departments,});

  DepartmentDescriptionModels.fromJson(dynamic json) {
    if (json['departments'] != null) {
      departments = [];
      json['departments'].forEach((v) {
        departments!.add(Departments.fromJson(v));
      });
    }
  }
  List<Departments>? departments;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (departments != null) {
      map['departments'] = departments!.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Departments {
  String? id;
  String? departmentName;
  String? description;
  Departments({
    this.id,
    this.departmentName,
    this.description,});

  Departments.fromJson(dynamic json) {
    id = json['id'];
    departmentName = json['departmentName'];
    description = json['description'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['departmentName'] = departmentName;
    map['description'] = description;
    return map;
  }

}