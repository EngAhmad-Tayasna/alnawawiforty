import 'package:alnawawiforty/screens/audio_hadith_screen.dart';
import 'package:alnawawiforty/screens/hadith_page.dart';
import 'package:alnawawiforty/screens/love_hadith.dart';
import 'package:alnawawiforty/utils/color_app.dart';
import 'package:alnawawiforty/utils/strings.dart';
import 'package:alnawawiforty/widgets/mycard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(
            "assets/svg/background.svg",
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              const SizedBox(height: 60),
              SvgPicture.asset("assets/svg/logo.svg"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  TextApp.primarySmall,
                  const SizedBox(height: 20),
                  TextApp.headerScreenTwo,
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HadithScreen()));
                    },
                    child: myCard(
                        ColorApp.primary,
                        ColorApp.darkPrimary,
                        "assets/svg/one.svg",
                        "assets/quran.png",
                        TextApp.cardOne),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const AudioHadithScreen()));
                    },
                    child: myCard(
                        ColorApp.primary,
                        ColorApp.darkPrimary,
                        "assets/svg/two.svg",
                        "assets/quran.png",
                        TextApp.cardTwo),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const  LoveHadith()));
                    },
                    child: myCard(
                        ColorApp.primary,
                        ColorApp.darkPrimary,
                        "assets/svg/three.svg",
                        "assets/quran.png",
                        TextApp.cardThree),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
