// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:alnawawiforty/db/my_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:alnawawiforty/models/hadith.dart';

// ignore: must_be_immutable
class NetworkingPageContent extends StatefulWidget {
  final String data;
  Hadith hadith;

  NetworkingPageContent({
    super.key,
    required this.data,
    required this.hadith,
  });

  @override
  _NetworkingPageContentState createState() => _NetworkingPageContentState();
}

class _NetworkingPageContentState extends State<NetworkingPageContent> {
  List<Hadith> loveHadith = [];
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset("assets/svg/logo.svg"),
                  InkWell(
                    onTap: () {
                      setState(() {
                        MyData.addLoveHadith(widget.hadith);
                      });
                    },
                    child: Image.asset(
                      widget.hadith.bol!
                          ? "assets/self-love.png"
                          : "assets/self-love (1).png",
                      scale: 10,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          _convertHadith(context, widget.data),
        ],
      ),
    );
  }
}

RichText _convertHadith(BuildContext context, String text) {
  text = text.replaceAll('(', '{');
  text = text.replaceAll(')', '}');

  List<String> split = text.split(RegExp("{"));

  List<String> hadith = split.getRange(1, split.length).fold([], (t, e) {
    var texts = e.split("}");

    if (texts.length > 1) {
      return List.from(t)
        ..addAll(["{${texts.first}}", (e.substring(texts.first.length + 1))]);
    }
    return List.from(t)..add("{${texts.first}");
  });

  return RichText(
    textAlign: TextAlign.right,
    text: TextSpan(
      style: const TextStyle(fontSize: 20, color: Colors.brown),
      //style: DefaultTextStyle.of(context).style,
      children: [
        TextSpan(text: split.first),
        ...hadith.map((text) => text.contains("{")
            ? TextSpan(
                text: text,
                style: const TextStyle(
                    color: Colors.green, fontWeight: FontWeight.bold))
            : TextSpan(text: text))
      ],
    ),
    textDirection: TextDirection.rtl,
  );
}
