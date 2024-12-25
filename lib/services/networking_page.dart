// import 'package:alnawawiforty/model/hadithe.dart';
import 'package:alnawawiforty/models/hadith.dart';
import 'package:alnawawiforty/services/page_content.dart';
import 'package:flutter/material.dart';
// import './networking_page_content.dart';

class NetWorkingPage extends StatelessWidget {
  final Hadith hadith;
  final String data;
  const NetWorkingPage({super.key, required this.hadith, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CustomScrollView(
          slivers: <Widget>[
            NetworkingPageContent(
              data: data,
              hadith: hadith
            ),
          ],
        ),
      ),
    );
  }
}
