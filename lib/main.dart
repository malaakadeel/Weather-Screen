import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/network/dio_helper.dart';
import 'package:weather_app/src/appRoot.dart';

void main() {
 // Bloc.observer=MyBlocObserver();
  DioHelper.init();
  runApp(const MyApp());
}

