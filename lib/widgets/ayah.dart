import 'package:alnawawiforty/utils/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget ayah(String key, name) {
  return Stack(
    alignment: Alignment.center,
    children: [
      Image.asset("assets/img.png"),
      SvgPicture.asset(
        "assets/svg/grey.svg",
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            key,
            style: const TextStyle(fontSize: 12, color: ColorApp.yellow),
          ),
          const SizedBox(
            height: 5,
          ),
           SizedBox(
            width: 120,
            child: Text(name,
                textAlign: TextAlign.center,
                style:  const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: ColorApp.yellow)),
          ),
        ],
      )
    ],
  );
}
