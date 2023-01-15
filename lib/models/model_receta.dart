class receta{
  final int id;
  final String name;
  final String image;
  final String description;

  const receta({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    });

    factory receta.fromJson(Map<String,dynamic>json)=> receta(
      id: json["id"], 
      name: json["name"], 
      image: json["image"], 
      description: json["description"],
      );

      Map<String, dynamic> toJson()=>{
        "id":id,
        "name":name,
        "image":image,
        "description":description,
      };

      receta copy() => receta(
        id: id,
        name: name,
        image: image, 
        description: description
          );
}