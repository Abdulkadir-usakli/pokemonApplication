import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class sabitler {
  static TextStyle titleStyle() {
    return TextStyle(
        color: Colors.white,
        fontSize: calculateFontSize(40),
        fontWeight: FontWeight.bold);
  }

  static TextStyle pokemonNameStyle() {
    return TextStyle(
        color: Colors.white,
        fontSize: calculateFontSize(18),
        fontWeight: FontWeight.bold);
  }

  static TextStyle pokemonTypeStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: calculateFontSize(20),
    );
  }

  static calculateFontSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * 1.1).sp;
    }
  }

  static pokemonImageStyle() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return 0.2.sw;
    } else {
      return 0.3.sh;
    }
  }

  static final Map<String, Color> typeColor = {
    'Grass': Colors.green,
    'Fire': Colors.redAccent,
    'Water': Colors.blue,
    'Electric': Colors.yellow,
    'Rock': Colors.grey,
    'Ground': Colors.brown,
    'Bug': Colors.lightGreenAccent,
    'Psychic': Colors.indigo,
    'Fighting': Colors.orange,
    'Ghost': Colors.deepPurple,
    'Normal': Colors.black26,
    'Poison': Colors.deepPurpleAccent,
  };
  static Color getColor(String type) {
    if (typeColor.containsKey(type)) {
      return typeColor[type] ?? Colors.pink.shade300;
    } else {
      return Colors.pink.shade300;
    }
  }

  static EdgeInsets iconPadding() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return EdgeInsets.all(15.h);
    } else {
      return EdgeInsets.all(4.w);
    }
  }

  static EdgeInsets getIconPadding() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return EdgeInsets.all(10.h);
    } else {
      return EdgeInsets.all(4.w);
    }
  }
}



