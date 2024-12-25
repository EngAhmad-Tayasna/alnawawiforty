import 'package:alnawawiforty/db/my_data.dart';
import 'package:alnawawiforty/models/hadith.dart';
import 'package:alnawawiforty/screens/local_audio.dart';
import 'package:alnawawiforty/utils/color_app.dart';
import 'package:alnawawiforty/utils/strings.dart';
import 'package:alnawawiforty/widgets/ayah.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AudioHadithScreen extends StatefulWidget {
  const AudioHadithScreen({super.key});

  @override
  State<AudioHadithScreen> createState() => _HadithScreenState();
}

class _HadithScreenState extends State<AudioHadithScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: TextApp.primarySmall,
          backgroundColor: ColorApp.primary,
        ),
        body: Column(
          children: [
            Expanded(
                flex: 1,
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      "assets/svg/background.svg",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/svg/logo.svg"),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            TextApp.headerScreenTwo
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        )
                      ],
                    )
                  ],
                )),
            Expanded(
                flex: 3,
                child: Stack(
                  children: [
                    SvgPicture.asset("assets/svg/background.svg",
                        width: double.infinity, fit: BoxFit.cover),
                    FutureBuilder(
                        future: MyData.getAllData(),
                        builder:
                            (BuildContext context, AsyncSnapshot snapShot) {
                          return GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisSpacing: 20,
                                      crossAxisSpacing: 20,
                                      crossAxisCount: 2),
                              itemCount: 42,
                              itemBuilder: (context, index) {
                                Hadith item = snapShot.data[index];
                                return GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AudioPlayerPage(
                                                    audioPath:
                                                    'audio/${item.audioHadith!}',
                                                    hadith: item,
                                                  )));
                                    },
                                    child: ayah(item.key!, item.nameHadith));
                              });
                        })
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
