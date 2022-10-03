class SourceModel{
  String id;
  String name;

  SourceModel({required this.name,required this.id});

  factory SourceModel.fromJson(Map<String,dynamic>json){
    return SourceModel(

        id: json['id'],
        name: json['name']

    );
  }
}