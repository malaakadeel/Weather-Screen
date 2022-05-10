import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherStatus extends StatelessWidget {
  final IconData icon ;
  final String num;
  const WeatherStatus(this.icon,this.num,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 2.0,
        top: 50.0,
        end: 20.0,
      ),
      child: Container(
        child: Row(
          children: [
            Icon(
              icon,
              size: 20.0,
              color: Colors.blueAccent,
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              '$num',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
