import 'package:alnawawiforty/screens/local_audio.dart';
import 'package:alnawawiforty/services/networking_page.dart';
import 'package:flutter/material.dart';

Widget getWidget(bool bol, dynamic widget, String text) {
  if (bol) {
    return NetWorkingPage(
      hadith: widget.hadith,
      data: text,
    );
  } else {
    return AudioPlayerPage(
        hadith: widget.hadith, audioPath: 'audio/${widget.hadith.audioHadith}');
    // return const Center(child: CircularProgressIndicator());
  }
}
