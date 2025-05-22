import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/sabit/sabitler.dart';

class apiTitle extends StatefulWidget {
  const apiTitle({super.key});

  @override
  State<apiTitle> createState() => _appTitleState();
}

class _appTitleState extends State<apiTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          ScreenUtil().orientation == Orientation.portrait ? 0.15.sh : 0.15.sw,
      child: Stack(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text('POKEDEX', style: sabitler.titleStyle())),
          Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                'assets/images/pokeball.png',
                width: ScreenUtil().orientation == Orientation.portrait
                    ? 0.2.sh
                    : 0.2.sw,
                fit: BoxFit.fitWidth,
              )),
        ],
      ),
    );
  }
}
