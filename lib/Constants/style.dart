import 'dart:ui';
import 'package:flutlab/Constants/color.dart';
import 'package:flutlab/Constants/dimensions.dart';
import 'package:flutter/material.dart';

final containerPrimaryText =
    TextStyle(color: whiteColor, fontSize: bigSize , fontWeight: FontWeight.bold);

final containerSecondaryTextStyle = TextStyle(color: whiteColor, fontSize: mediumSize);

final titleText =
    TextStyle(color: blackColor, fontSize: titleSize, fontWeight: FontWeight.bold);

final normalText = TextStyle(
  color: greyColor,
  fontSize: smallSize,
);

final superScriptText = TextStyle(
    fontSize: smallSize,
    fontWeight: FontWeight.bold,
    fontFeatures: [FontFeature.superscripts()]);
    

final normalTextStyleLineTrough = TextStyle(
    color: greyColor, fontSize: mediumSize, decoration: TextDecoration.lineThrough);
final readMore =
    TextStyle(color: orangeColor, fontWeight: FontWeight.bold, fontSize: mediumSize);

final reviewsText =
    TextStyle(color: blackColor, fontSize: bigSize, fontWeight: FontWeight.bold);



final homePagetitleText =
    TextStyle(color: blackColor, fontSize: bigSize, fontWeight: FontWeight.bold);

final homePageAddtotitleText =
    TextStyle(color: blackColor, fontSize: mediumSize, fontWeight: FontWeight.bold);


final containerTitleText = TextStyle(color: blackColor, fontSize: mediumSize, fontWeight: FontWeight.bold);
