class Coord {
  double lon;
  double lat;

  Coord ({
  required this.lon , required this.lat
});
Map<String,dynamic> toJson(){
  return{
    "lon":this.lon,
    "lat":this.lat,
  };
}
}