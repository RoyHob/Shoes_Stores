import 'dart:ui';
import 'package:flutlab/Constants/color.dart';
import 'package:flutter/material.dart';

final containerPrimaryText =
    TextStyle(color: whiteColor, fontSize: 20, fontWeight: FontWeight.bold);

final containerSecondaryTextStyle = TextStyle(color: whiteColor, fontSize: 15);

final titleText =
    TextStyle(color: blackColor, fontSize: 30, fontWeight: FontWeight.bold);

final normalText = TextStyle(
  color: greyColor,
  fontSize: 10,
);

final superScriptText = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    fontFeatures: [FontFeature.superscripts()]);
    //TODO! superscirpt 

final normalTextStyleLineTrough = TextStyle(
    color: greyColor, fontSize: 15, decoration: TextDecoration.lineThrough);
    //TODO! lineThough
final readMore =
    TextStyle(color: orangeColor, fontWeight: FontWeight.bold, fontSize: 14);

final reviewsText =
    TextStyle(color: blackColor, fontSize: 20, fontWeight: FontWeight.bold);

//* HomePage

final homePagetitleText =
    TextStyle(color: blackColor, fontSize: 25, fontWeight: FontWeight.bold);

final homePageAddtotitleText =
    TextStyle(color: blackColor, fontSize: 15, fontWeight: FontWeight.bold);
