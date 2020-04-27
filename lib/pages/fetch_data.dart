class FetchData{
  String mot;
  String mot_fr;
  String description;
  String description_fr;
  FetchData({this.mot,this.mot_fr,this.description,this.description_fr});

  factory FetchData.fromJson(Map<String,dynamic>json) {
    return FetchData(
      mot: json['mot'],
      mot_fr: json['mot_fr'],
      description: json['description'],
      description_fr: json['description_fr']
    );
  }
}