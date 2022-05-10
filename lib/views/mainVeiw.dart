import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:weather_app/components/dailyWeather.dart';
import 'package:weather_app/components/weatherStatus.dart';
import '../components/hourlyWeather.dart';

class MainVeiw extends StatelessWidget {
  const MainVeiw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body:Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
         image: DecorationImage(
            image:  AssetImage("images/weatherBackground.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 15.0,top: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  SizedBox(
                    height: 40.0,
                  ),
                   Align(
                     alignment: Alignment.topLeft,
                     child: Text(
                      'Cairo',
                      style: TextStyle(
                        fontSize: 35.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                  ),
                   ),
                   Text(
                     '20°',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 80.0,
                       fontWeight: FontWeight.w700
                     ),
                   ),
                   Container(
                     width: 90.0,
                     height: 30.0,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(
                           Radius.circular(30.0) //                 <--- border radius here
                       ),
                       color: Colors.indigo,
                     ),
                     child: Text(
                       'Cloudy',
                       textAlign: TextAlign.center,
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 20.0,
                       ),
                     ),
                   ),
                ],
             ),
              ),
              Row(
                  children: [
                    WeatherStatus(Icons.water_drop_outlined, '13%'),
                    WeatherStatus(Icons.south, '0.533 mbar'),
                    WeatherStatus(Icons.air, '9Km/h'),
                  ],
                ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Today',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white38,
                  ),
                ),
              ),
              HourlyWeather(),
              DailyWeather('Sunday',Icons.wb_sunny,'18°','21°'),
              DailyWeather('Monday',Icons.cloud,'19°','23°'),
              DailyWeather('Tuesday',Icons.water_drop_outlined,'16°','19°'),
            ],
          ),
        ),
      ) ,
    );
  }
}
