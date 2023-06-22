
class GetLectureModel{
  List<GetData> getData=[];
  bool isContain = false;

  GetLectureModel.fromJson(json){
    if(json!=null){
      json.forEach((element) {

          getData.add(GetData.fromJson(element));

      });
    }
  }
}


class GetData {

  String? id;
  String? lecNumber;
  String? startTime;
  String? endTime;
  int? qrDuration;
  String? qrImage;
  String? subjectId;
  dynamic subject;
  String? doctorId;
  dynamic doctor;
  dynamic lectureStudents;

  GetData.fromJson(dynamic json) {
    id = json['id'];
    lecNumber = json['lecNumber'];
    startTime = json['startTime'];
    endTime = json['endTime'];
    qrDuration = json['qr_Duration'];
    qrImage = json['qr_Image'];
    subjectId = json['subjectId'];
    subject = json['subject'];
    doctorId = json['doctorId'];
    doctor = json['doctor'];
    lectureStudents = json['lectureStudents'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['lecNumber'] = lecNumber;
    map['startTime'] = startTime;
    map['endTime'] = endTime;
    map['qr_Duration'] = qrDuration;
    map['qr_Image'] = qrImage;
    map['subjectId'] = subjectId;
    map['subject'] = subject;
    map['doctorId'] = doctorId;
    map['doctor'] = doctor;
    map['lectureStudents'] = lectureStudents;
    return map;
  }

}