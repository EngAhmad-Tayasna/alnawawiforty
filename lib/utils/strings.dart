import 'package:alnawawiforty/utils/color_app.dart';
import 'package:flutter/material.dart';

abstract class TextApp {
  static Text primary = const Text('الأربعون النووية',
      style: TextStyle(
          fontSize: 36, fontWeight: FontWeight.bold, color: ColorApp.white));
  static Text primarySmall = const Text(
    'الأربعون النووية',
    style: TextStyle(fontSize: 20),
  );
  static Text headerScreenTwo = const Text('لحفظ وسماع الأحاديث النبوية',
      style: TextStyle(
          fontSize: 24, fontWeight: FontWeight.bold, color: ColorApp.primary));

  static Text cardOne = const Text('الأحاديث الاربعون',
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: ColorApp.white));
  static Text cardTwo = const Text(' الإستماع للأحاديث  ',
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: ColorApp.white));
  static Text cardThree = const Text('الأحاديث المحفوظة',
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: ColorApp.white));
  static Text loveTitle = const Text('الأحاديث المحفوظة',
      style: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: ColorApp.primary));
}
