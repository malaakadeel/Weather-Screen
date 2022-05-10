class Weather {
  int id;
  String main, description, icon;


  Weather({
   required this.id,
    required this.main,
    required this.description,
    required this.icon,

  });
  Map<String,dynamic> toJson(){
    return{
      "id" :this.id ,
      "main":this.main,
      "descreption":this.description,
      "icon":this.icon,
    };
}

}