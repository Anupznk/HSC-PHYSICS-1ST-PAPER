import 'package:flutter/material.dart';
import 'package:hsc_physics/chapter.dart';
import 'package:hsc_physics/chapter_card.dart';
Color baseColor = Color(0xFF50CB88);

class Physics1stPaperList extends StatefulWidget {
  const Physics1stPaperList({Key? key}) : super(key: key);

  @override
  _Physics1stPaperListState createState() => _Physics1stPaperListState();
}

class _Physics1stPaperListState extends State<Physics1stPaperList> {
  List<Chapter> chapters = [
    Chapter('ভেক্টর', 0),
    Chapter('গ্রাফ', 1),
    Chapter('গতি', 2),
    Chapter('রৈখিক গতিসূত্র', 3),
    Chapter('কৌণিক গতিসূত্র', 4),
    Chapter('কাজ শক্তি ক্ষমতা', 5),
    Chapter('মহাকর্ষ অভিকর্ষ', 6),
    Chapter('স্থিতিস্থাপকতা', 7),
    Chapter('প্রবাহী', 8),
    Chapter('সরল ছন্দিত স্পন্দন', 9),
    Chapter('তরঙ্গ', 10),
    Chapter('তাপ এবং গ্যাস', 11),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Topic LIst',
        style: TextStyle(fontWeight: FontWeight.bold),),
        elevation: 0,
        backgroundColor: baseColor,
      ),
      backgroundColor:
      Color(0xFFF3F4F8), // 0xFF and then copy the hex code without #
      body: SingleChildScrollView(
        child: Column(
          children: chapters
              .map((chapter) =>
              ChapterCard(
                chapter: chapter,)).toList(),
        ),
      ),
    );
  }
}
