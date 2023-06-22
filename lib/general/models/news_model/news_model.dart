class News_Model{
  List<News_Model_List> news=[];
  News_Model.fromJson(dynamic json){
    if (json != null) {
      json.forEach((v) {
        news.add(News_Model_List.fromJson(v));
      });
    }
  }
}

class News_Model_List {
  String? id;
  String? title;
  String? body;
  String? image;
  String? createTime;
  String? adminName;

  News_Model_List.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    body = json['body'];
    image = json['image'];
    createTime = json['createTime'];
    adminName = json['adminName'];
  }
}