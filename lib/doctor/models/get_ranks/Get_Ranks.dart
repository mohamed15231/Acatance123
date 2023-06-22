class Get_Rank_Model{
  List<Ranks>? subjects=[];
  Get_Rank_Model.fromJson(dynamic json) {
    if (json['ranks'] != null) {
      json['ranks'].forEach((v) {
        subjects?.add(Ranks.fromJson(v));
      });
    }
  }
}
class Ranks{
  String? id;
  String? rankName;

  Ranks.fromJson(dynamic json) {
    id = json['id'];
    rankName = json['rankName'];
  }

}