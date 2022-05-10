import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/hourlyModel.dart';

class HourlyWeather extends StatelessWidget {
  List<HourlyModel> hourlyWeather =[
    HourlyModel(
        hour: '10 AM' ,
        icon: Icons.sunny ,
        degree: '20°'),
    HourlyModel(
        hour: '11 AM' ,
        icon: Icons.cloud ,
        degree: '19°'),
    HourlyModel(
        hour: '12 AM' ,
        icon: IconData(0xf04cf, fontFamily: 'MaterialIcons'),
        degree: '18°'),
    HourlyModel(
        hour: '1 PM' ,
        icon: IconData(0xf04cf, fontFamily: 'MaterialIcons') ,
        degree: '20°'),
    HourlyModel(
        hour: '2 PM' ,
        icon: Icons.sunny ,
        degree: '19°'),
    HourlyModel(
        hour: '3 PM' ,
        icon: Icons.wb_sunny,
        degree: '20°'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => HourlyItem(hourlyWeather[index]),
        itemCount: hourlyWeather.length,
      ),
    );
  }
}
  Widget HourlyItem(HourlyModel model) {
    return  Container(
      width: 80.0,
      height: 100.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${model.hour}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
          Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10.0,),
               color: Colors.transparent,
             ),
            child: Icon(
              model.icon,
              size: 30.0,
              color: Colors.lightBlue,
            ),
          ),
          Text(
            ' ${model.degree}',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.w500
            ),
          ),
        ],
      ),
    );
}
