class Cast{

  List<Actor> actores = new List();

  Cast.fromJsonList(List<dynamic> jsonList){
    
    if(jsonList == null) return;

    jsonList.forEach((item){
      final actor = Actor.fromJsonMap(item);
      actores.add(actor);
    });
  }

}



class Actor {
  int castId;
  String character;
  String creditId;
  int gender;
  int id;
  String name;
  int order;
  String profilePath;

  Actor({
    this.castId,
    this.character,
    this.creditId,
    this.gender,
    this.id,
    this.name,
    this.order,
    this.profilePath,
  });

  Actor.fromJsonMap(Map<String, dynamic> json){
    castId = json['castId'];
    character = json['character'];
    creditId = json['creditId'];
    gender = json['gender'];
    id = json['id'];
    name = json['name'];
    order = json['order'];
    profilePath = json['profilePath'];
  }

  getFotoImg(){

    if(profilePath == null){
      return 'https://upload.wikimedia.org/wikipedia/commons/9/9a/No_avatar.png';
    }else{
      return 'https://image.tmdb.org/t/p/w500/$profilePath';
    }
  }

}
