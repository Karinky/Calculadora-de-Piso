import 'package:floor_calculator/core/constants.dart';
import 'package:flutter/material.dart';

final kAppTheme = ThemeData(
  primarySwatch: kPrimaryColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  buttonTheme: ButtonThemeData(
    height: kButtonHeight,
    textTheme: ButtonTextTheme.primary,
   )
);