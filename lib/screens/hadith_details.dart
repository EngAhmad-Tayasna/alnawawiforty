import 'package:alnawawiforty/models/hadith.dart';
import 'package:alnawawiforty/utils/color_app.dart';
import 'package:alnawawiforty/utils/strings.dart';
import 'package:alnawawiforty/widgets/get_widget.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class HomeHadith extends StatefulWidget {
  final Hadith hadith;

  const HomeHadith({super.key, required this.hadith});

  @override
  State<HomeHadith> createState() => _HomeHadithState();
}

class _HomeHadithState extends State<HomeHadith> {
  bool bol = true;
  bool clickedCenterFAB = false;
  int selectedIndex = 0;
  String text = '';

  @override
  void initState() {
    super.initState();
    text = widget.hadith.textHadith!;
  }

  void updateTabSelection(int index, String buttonText) {
    setState(() {
      selectedIndex = index;
      text = '$buttonText\n';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            title: TextApp.primarySmall,
            backgroundColor: ColorApp.primary,
          ),
          body: Stack(
            children: [
              getWidget(bol, widget, text),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.black38,
            elevation: 4.0,
            shape: const CircleBorder(),
            onPressed: () {
              setState(() {
                clickedCenterFAB = !clickedCenterFAB;
              });
              Share.share(text, subject: widget.hadith.nameHadith);
            },
            tooltip: "Center FAB",
            child: Container(
                margin: const EdgeInsets.all(15.0),
                child: const Icon(
                  Icons.share,
                  color: Colors.white,
                )),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterDocked,
          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            color: ColorApp.primary,
            child: Container(
              height: 60,
              margin: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      bol = true;
                      updateTabSelection(0, widget.hadith.textHadith!);
                    },
                    iconSize: 27.0,
                    icon: Icon(
                      Icons.book,
                      color:
                          selectedIndex == 0 ? ColorApp.yellow : Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      bol = true;
                      updateTabSelection(1, widget.hadith.explanationHadith!);
                    },
                    iconSize: 27.0,
                    icon: Icon(
                      Icons.library_books,
                      color:
                          selectedIndex == 1 ? ColorApp.yellow : Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 50.0,
                  ),
                  IconButton(
                    onPressed: () {
                      bol = true;
                      updateTabSelection(2, widget.hadith.translateNarrator!);
                    },
                    iconSize: 27.0,
                    icon: Icon(
                      Icons.collections_bookmark,
                      color:
                          selectedIndex == 2 ? ColorApp.yellow : Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      bol = false;
                      updateTabSelection(3,
                          '${widget.hadith.key!} \n${widget.hadith.nameHadith!}');
                    },
                    iconSize: 27.0,
                    icon: Icon(
                      Icons.volume_up,
                      color:
                          selectedIndex == 3 ? ColorApp.yellow : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
