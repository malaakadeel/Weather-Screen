import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DailyWeather extends StatelessWidget {
  final String? day ;
  final IconData? icon;
  final String? degree1;
  final String? degree2;

  const DailyWeather(
      @required this.day,
      @required this.icon,
      @required this.degree1,
      @required this.degree2,
      {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
          start: 10.0,
          bottom: 10.0,
          end: 20.0,
          top: 20.0
      ),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '$day',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              width: 50.0,
            ),
            Icon(
              icon,
              color: Colors.indigoAccent[700],
              size: 30.0,
            ),
            SizedBox(
              width: 60.0,
            ),
            Text(
              '$degree1',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
                '$degree2',
                style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.indigo,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
