class LectureStatesModel{
  List<Get_Data>? getData;
  LectureStatesModel.fromJson(dynamic json){
    if(json!=null){
      getData=[];
      json.forEach((v){
        getData!.add(Get_Data.fromJson(v));
      });
    }
  }
}



class Get_Data {
  Get_Data({
      this.studentId, 
      this.studentName, 
      this.universityId, 
      this.major, 
      this.lectureId, 
      this.lecNumber, 
      this.subjectName, 
      this.startTime, 
      this.endTime,});

  Get_Data.fromJson(dynamic json) {
    studentId = json['studentId'];
    studentName = json['studentName'];
    universityId = json['universityId'];
    major = json['major'];
    lectureId = json['lectureId'];
    lecNumber = json['lecNumber'];
    subjectName = json['subjectName'];
    startTime = json['startTime'];
    endTime = json['endTime'];
  }
  String? studentId;
  String? studentName;
  String? universityId;
  String? major;
  String? lectureId;
  String? lecNumber;
  String? subjectName;
  String? startTime;
  String? endTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['studentId'] = studentId;
    map['studentName'] = studentName;
    map['universityId'] = universityId;
    map['major'] = major;
    map['lectureId'] = lectureId;
    map['lecNumber'] = lecNumber;
    map['subjectName'] = subjectName;
    map['startTime'] = startTime;
    map['endTime'] = endTime;
    return map;
  }

}