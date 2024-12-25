import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget myCard(Color color1, color2, String path1, path2, Text text) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20, top: 48),
    child: Container(
      height: 117,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.grey, offset: Offset(10, 10), blurRadius: 15)
          ],
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
              colors: [color1, color2],
              begin: AlignmentDirectional.topEnd,
              end: AlignmentDirectional.bottomStart)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(path2),
          text,
          SvgPicture.asset(path1),
        ],
      ),
    ),
  );
}
