import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hsc_physics/physics_1st_paper_list.dart';
import 'package:hsc_physics/practice.dart';
import 'package:hsc_physics/quiz.dart';
import 'package:url_launcher/url_launcher.dart';
import 'chapter.dart';
import 'package:fluttertoast/fluttertoast.dart';

Color baseColor = Color(0xFF50CB88);

class ChapterCard extends StatelessWidget {
  final Chapter
      chapter; // since this is a stateless widget, we need to use the final keyword

  ChapterCard({required this.chapter});

  final category = [
    'vector',
    'graph',
    'motion',
    'linear motion',
    'angular motion',
    'wpe',
    'gravity',
    'elasticity',
    'fluid',
    'shm',
    'wave',
    'heat',
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 0,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 12, 12, 12),
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              chapter.text,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          leading: Icon(
            Icons.check_circle,
            size: 30,
            color: baseColor,
          ),
          trailing: Icon(Icons.arrow_forward_ios_sharp),
          onTap: () {
            Navigator.pushNamed(context, '/${category[chapter.id]}');


          },
        ),
      ),
    );
  }
}

class Strings {
  static const fluid_string1 =
      "প্রবাহীর পৃষ্ঠে একটি সরল রেখা কল্পনা করা হলে উক্ত সরলরেখার প্রতি একক দৈর্ঘ্যে ওই রেখার "
      "দুই পার্শের তরলের পৃষ্ঠ তলে এক অংশ অন্য অংশের উপর যে স্পর্শক বল প্রয়োগ করে তাকেই "
      "তরলের পৃষ্ঠটান বলে।  ";
  static const fluid_string2 =
      "এখানে L হচ্ছে বস্তুর যতটুকু “দৈর্ঘ্য” তরলের সংস্পর্শে থাকে। \n যেমন "
      "পানিতে একটি সুচ থাকলে L হবে সুচের দুই পাশের মোট দৈর্ঘ্য 2l";
  static const fluid_quiz =
      " পানির উপরিতল হতে 0.05m লম্বা একটি আনুভুমিক তারকে টেনে তুলতে তারের ওজনসহ সর্বাধিক "
      "7.28×10-3  বলের প্রয়োজন হয়। পানির পৃষ্ঠটান নির্ণয় কর।";
  static const fluid_string3 =
      "কোন একটি প্রবাহী পৃষ্ঠের ক্ষেত্রফল একক পরিমান বৃদ্ধি করতে প্রয়োজনীয় কাজের পরিমাণকে বুঝায়।"
      "গানিতিকভাবে এটি পৃষ্ঠ টানের সমান। \nকাজেই,পৃষ্ঠ শক্তিঃ";
  static const fluid_string4 =
      "আমরা এখন একটি গুরুত্বপূর্ণ গানিতিক সমসস্যা শিখব।\n"
      "ধরা যাক R ব্যাসারধের একটি বাবল কে স্প্রে করে N সংখ্যক r ব্যাসার্ধের ছোট বাবল তৈরি করা হয়েছে। আমাদের শক্তির শোষণ বের করতে হবে।\n"
      " Step 1: Volume for both the sysytems will remain equal. কাজেই নিম্নের সমীকরণ থেকে আমরা r বের করে নিব";
  static const fluid_string5 =
      "Step 2: এবার নিম্নের সমীকরণদ্বয় থেকে আমরা ক্ষেত্রফলের বৃদ্ধি ∆A এবং শক্তির শোষণ ∆E বের করে নিবঃ ";
  static const fluid_string6 =
      " যদি বাবলের দুইটি পৃষ্ঠ থাকে (যেমন সাবানের বাবল) তাহলে 2 দ্বারা গুন করতে হবে।";
  static const fluid_quiz2 =
      "Quiz: একটি সাবানের বুদবুদ তৈরিতে কত কাজ করতে হবে?";
  static const fluid_string7 = "সান্দ্রতাঃ \n"
      "যে ধর্মের দরুন প্রবাহী তার অভ্যন্তরস্থ বিভিন্ন স্তরের আপেক্ষিক বেগ রোধ করার চেষ্টা করে। \n সান্দ্রতা সংক্রান্ত Newton এর সুত্রঃ";
  static const fluid_string8 =
      "এখানে, dv/dy = বেগের নতিমাত্রা \n  η=  সান্দ্রতাংক \n  A = প্রবাহী স্তরের ক্ষেত্রফল   \n The unit of coefficient of viscosity in CGS is poise.\n SI unit of coefficient of viscosity = poiseuille = 10 poise";
  static const fluid_quiz3 =
      "0.001 meter squared ক্ষেত্রফল বিশিষ্ট একটি প্লেট 1.55 Ns/meter squared সান্দ্রতাংকের তরলের 0.002m পুরু স্তরের উপর অবস্থিত। প্লেটটিকে 0.05 meter per second বেগে চালনা করতে আনুভুমিক বরাবর প্রয়োজনীয় বলের মান নির্ণয় কর";
  static const fluid_string9 =
      "Stokes law:\nকোন সান্দ্র তরলের মাঝে দিয়ে পড়ন্ত একটি r ব্যাসার্ধের গোলক, যে মুহূর্তে এর বেগ v থাকে, সেই মুহূর্তে যে পরিমান সান্দ্র বল অনুভব করেঃ";
  static const fluid_string10 =
      "পড়ন্ত বস্তুর বেগ সময়ের সাথে বাড়তে থাকে যেহেতু ত্বরণ বিদ্যমান। এভাবে বাড়তে বাড়তে বেগটি এমন একটি সর্বাধিক মানে পৌছায় যার পরে আর বেগের মান বাড়ে না, বেগটি সুষম হয়ে যায়, ফলে ত্বরণ শূন্য হয়\n এই সমবেগ কে আমরা বলি অন্তবেগ বা প্রান্তিক  বেগ।\n প্রান্তিক বেগঃ ";
  static const fluid_quiz4 =
      "একটি পানির ফোঁটা বায়ুর মধ্য দিয়ে পতিত হচ্ছে। ফোঁটার প্রান্তিক বেগ 0.0012 meter per second এবং বায়ুর জন্য  η=0.018 হলে পানির ফোঁটার ব্যাস কত?";
  static const fluid_quiz5 =
      "একটি কৈশিক নলের ব্যাস 0.2mm. একে  0.072 Newton per meter পৃষ্ঠটান এবং 1000 kg per meter cubed ঘনত্বের পানিতে ডুবানো হলে নলের কত উচ্চতায় পানি উঠবে?";
  static const fluid_string11 =
      "কৈশিকতাঃ\nকৈশিক নলে তরলের উত্থান পতনকে কৈশিকতা বলে।এক্ষেত্রে প্রয়োজনীয় সুত্রটি হচ্ছেঃ";
  static const shm1 =
      "নিম্নবর্ণিত  বৈশিষ্ট্য থাকলে একটি কণার গতিকে সরল ছন্দিত স্পন্দন বলেঃ\n (i)এর গতি পর্যায় গতি\n(ii)এর গতি স্পন্দন গতি\n(iii)এর গতি একটি সরলরেখায় ঘটে\n(iv)ত্বরণ সরণের সমানুপাতিকত্বরণ সরণের বিপরীতমুখী\nঅর্থাৎ";
  static const shm2 = "এই ডিফারেন্সিয়াল সমীকরণকে সমাধান করলে আমরা পাই,";
  static const shm3 =
      "এখানে δ হচ্ছে আদি দশা; যাকে আমরা t=0s এ কৌণিক সরণ দ্বারা বুঝে থাকি। ";
  static const shm_quiz1 =
      "Quiz: SHM সম্পন্ন কণার গতীয় সমীকরণঃ y=10sin(wt+δ) কণার আদি সরণ 0.05m হলে কনাটির আদি দশা কত?";
  static const wave1 =
      "বিট: \n সমান বা প্রায় সমান তীব্রতা এবং প্রায় সমান কম্পাংকবিশিষ্ট একই দিকে অগ্রগামী দুটি শব্দ তরঙ্গের উপরিপাতনের ফলে শব্দের লব্ধি প্রাবল্যের হ্রাসবৃদ্ধির ঘটনাকে বিট বলে।\n1 সেকেন্ডে বিট সংখ্যা = শব্দ কম্পাংকদ্বয়ের পার্থক্য";
  static const wave_quiz1 =
      "A এবং B দুইটি সুরেলিকাটা একত্রে শব্দায়িত করা হলে প্রতি সেকেন্ডে 5 টি বিট শোনা যায়। A এর বাহুর ভর কিছু কমালে বিট উৎপন্নের হার বাড়ে। B এর কম্পাংক 512Hz হলে A এর প্রকৃত কম্পাংক কত? ";
  static const graph1 =
      "ঢালঃ\n আমরা যখন কোন গ্রাফ প্লট করি তখন Y অক্ষে অধীন চলক এবং X অক্ষে স্বাধীন চলক বসাই। এইভাবে প্রাপ্ত একটি গ্রাফের জন্য ঢাল বলতে আমরা বুঝি স্বাধীন চলকের সাপেক্ষে অধীন চলকের পরিবর্তনের হার।";
  static const motion1 =
      "দ্বিমাত্রিক গতিসম্পন্ন কণার গতীয় সমীকরণের প্রতিটি পদের দুইটি করে উপাংশ থাকে, যার ফলে দ্বিমাত্রিক গতি সম্পন্ন কনার সকল ক্যালকুলেশন ভেক্টর উপায়ে করতে হয়। দ্বিমাত্রিক গতিসম্পন্ন কনার গতিপথ বক্ররেখা হলে, কোন নির্দিষ্ট সময়ে কনার রৈখিক বেগের অভিমুখ ঐ সময়ে কনার অবস্থান বিন্দুতে অঙ্কিত স্পর্শক বরাবর হয়ে থাকে।";
  static const gravity1 =
      "এই মহাবিশ্বের প্রতিটি বস্তুকণা একে অপরকে নিজের দিকে আকর্ষণ করে এবং এই আকর্ষণ বলের মান বস্তু কণাদ্বয়ের ভরের গুণ ফলের সমানুপাতিক, এদের মধ্যবর্তী দূরত্বের বর্গের ব্যাস্তানুপাতিক এবং এই বল বস্তুদ্বয়ের কেন্দ্র সংযোজক সরলরেখা বরাবর ক্রিয়া করে।\n"
      " মনে করি, m1 এবং m2 ভরের দুইটি বস্তু পরস্পর r দূরত্বে অবস্থান করছে। নিউটনের সূত্র অনুযায়ী দুইটি বস্তু পরস্পরকে আকর্ষণ করছে। m1 বস্তুটি m2 বস্তুটিকে F1 বল দ্বারা এবং m2 বস্তুটি m1বস্তুটিকে F2 বল দ্বারা আকর্ষণ করছে। অর্থাৎ, F1=F2। মনে করি, F1=F2=F। তাহলে, নিউটনের সূত্র অনুযায়ী, ";
  static const vector1 =
      "Idea 01: ভেক্টর প্রকাশ করতে মান ও দিক উভয়ই প্রয়োজন। কোন কোন ক্ষেত্রে ভেক্টরের মান দ্বারা অন্য কোন স্কেলার রাশিকে প্রকাশ করা যায়।"
      "\nIdea 02: যেকোন ভেক্টরের দুটি বিন্দু থাকে- আদিবিন্দু ও শেষবিন্দু। ভেক্টরের দিক হবে আদিবিন্দু থেকে শেষবিন্দুর দিকে।"
      "\nIdea 03: সরণঃ অবস্থান ভেক্টরের পরিবর্তনকে সরণ বলে। অর্থাৎ, কোন কণার যাত্রাপথের আদিবিন্দু ও শেষবিন্দুর মধ্যবর্তী ন্যুনতম সরলরৈখিক দূরত্বই হল সরণ।\nঅতিক্রান্ত দূরত্বঃ কোন কণার যাত্রাপথের সম্পূর্ণ পথকেই মোট অতিক্রান্ত দূরত্ব বলে।";
  static const vector2 =
      "উপরের চিত্রে A বিন্দু হতে B বিন্দুতে যাওয়ার তিনটি পথ দেখানো হয়েছে। রঙিন পথগুলো দূরত্ব নির্দেশ করে এবং কালো সরলরেখাটি নির্দেশ করে কণাটির সরণ। খেয়াল করে দেখ, রঙিন পথগুলোর শেষে কোন তীরচিহ্ন দেয়া হয়নি। এবার নিশ্চয়ই বলতে পারবে কোন রাশিটি স্কেলার আর কোনটি ভেক্টর।";
  static const relative_velocity =
      "মোটকথা, যার সাপেক্ষে আপেক্ষিক বেগ বের করতে হবে সেই বেগটিকে বিয়োগ করতে হয়।।\n \n"
      "Example:"
      "\nধরা যাক, উল্লম্বভাবে পতিত বৃষ্টির বেগ 4m/s এবং এক ব্যক্তি 3m/s বেগে রাস্তা দিয়ে দৌড়ে যাচ্ছে। ব্যক্তিটি স্থির থাকলে তাকে ,উল্লম্বভাবে ছাতা মেলতে হত। কিন্তু ব্যক্তিটি চলমান বিধায় তাকে বৃষ্টি থেকে বাঁচার জন্য তার নিজের সাপেক্ষে বৃষ্টির আপেক্ষিক বেগের দিকে ছাতা মেলতে হবে।যেহেতু ব্যক্তিটির সাপেক্ষে বৃষ্টির বেগ, তাই ব্যক্তির বেগকে 180 ডিগ্রী কোণে ঘুরানো হল।";
}

class aboutUS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: baseColor,
        title: Text("About the Developers",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 12,
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "আমরা মানসম্মত Study App বানানোর জন্য কাজ করে যাচ্ছি। আমাদের উদ্দেশ্য একটি বিষয় এরুপে সাজিয়ে দেয়া যাতে করে সর্বনিম্ন সময়ে কোন কাঠামোতে একটি বিষয় আয়ত্ত করা যায় সে সম্পর্কে সম্যক ধারণা পাওয়া যায়। Content Creation এর কাজে আমাদের সাথে আছেন দেশ বরেণ্য সব শিক্ষক এবং প্রথম সারির বিশ্ববিদ্যালয়ে পড়ুয়া একদল কর্মী। "
                  "প্রতিটি update এ আমাদের App সমূহ আরও স্বয়ংসম্পূর্ণ হবে। \n"
                  "অন্যান্য প্রয়োজনীয় Study App এবং পরবর্তী Update সম্পর্কে জানতে আমাদের Instagram পেজে চোখ রাখো।\n -ধন্যবাদ",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            Divider(),
            Card(child: Image.asset('assets/Flyer.jpg')),
            Divider(),
            FlatButton.icon(
                color: Color(0xFFDD2035),
                onPressed: _launchURL,
                icon: Icon(
                  FontAwesomeIcons.instagram,
                  size: 30,
                  color: Colors.white,
                ),
                label: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Instagram',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                )),
            Divider(),
          ],
        ),
      ),
    );
  }
}

_launchURL() async {
  var url = 'https://www.instagram.com/dojobd/';

  if (await canLaunch(url)) {
    await launch(
      url,
      universalLinksOnly: true,
    );
  } else {
    throw 'There was a problem to open the url: $url';
  }
}

class Vector1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: <Widget>[
                  Text(
                    'HSC PHYSICS 1st PAPER',
                    style: TextStyle(fontSize: 20),
                  ),
                  Image.asset('assets/physics.png', height: 103)
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),
            ListTile(
              title: Text(
                "TOPIC LIST",
                style: TextStyle(
                    color: baseColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",
                  style: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Physics1stPaperList()),
                );
              },
            ),
            Divider(
              color: Colors.green[400],
              thickness: 1.2,
            ),
            ListTile(
              title: Text(
                "Let's Practice",
                style: TextStyle(
                    fontFamily: 'Knewave',
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",
                  style: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),
                );
              },
            ),
            Divider(
              color: Colors.green[400],
              thickness: 1.2,
            ),
            ListTile(
              title: Text(
                "ABOUT US",
                style: TextStyle(
                    fontFamily: 'Knewave',
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",
                  style: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),
                );
              },
            ),
            Divider(
              color: Colors.green[400],
              thickness: 1.2,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text("ভেক্টর Lesson 1",
            style: TextStyle(
                fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: 1)),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Card(
            elevation: 20.0,
            color: Colors.greenAccent[100],
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "ভেক্টর",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1.5,
                  ),
                  Text(
                    Strings.vector1,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Divider(),
                  Image.asset('assets/vector1.png'),
                  Divider(),
                  Text(
                    Strings.vector2,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Icon(Icons.assignment, size: 240, color: Colors.greenAccent),
          Card(
            child: Column(
              children: <Widget>[
                Text(
                  "চিত্রের চাকাটির ব্যাসার্ধ 40cm। পরপর দুটি ভিন্ন অবস্থানে P বিন্দুর সরণ কত?",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  softWrap: true,
                ),
                Image.asset('assets/Vector2.png'),
              ],
            ),
          ),
          Card(
            child: Column(
              children: <Widget>[
                Divider(),
                SizedBox(
                  height: 50,
                  width: 280,
                  child: Row(
                    children: <Widget>[
                      RaisedButton(
                        child: Text(
                          "A",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Fluttertoast.showToast(
                              msg: "Wrong!! Hey, Dont Give up",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0
                          );

                        },
                      ),
                      SizedBox(
                        height: 30,
                        width: 180,
                        child: Text(
                          "3.14m",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                SizedBox(
                    height: 50,
                    width: 280,
                    child: Row(children: <Widget>[
                      RaisedButton(
                        child: Text(
                          "B",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Fluttertoast.showToast(
                              msg: "Wrong!! Hey, Dont Give up",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              backgroundColor: Colors.red,
                              textColor: Colors.black,
                              fontSize: 16.0);
                        },
                      ),
                      SizedBox(
                        height: 30,
                        width: 180,
                        child: Text(
                          "1 m",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ])),
                Divider(),
                SizedBox(
                    height: 50,
                    width: 280,
                    child: Row(children: <Widget>[
                      RaisedButton(
                        child: Text(
                          "C",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Fluttertoast.showToast(
                              msg: "Correct!! Well Done!!",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              backgroundColor: Colors.green,
                              textColor: Colors.black,
                              fontSize: 16.0);
                        },
                      ),
                      SizedBox(
                        height: 30,
                        width: 180,
                        child: Text(
                          "1.49 m",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ])),
                Divider(),
                SizedBox(
                    height: 50,
                    width: 280,
                    child: Row(children: <Widget>[
                      RaisedButton(
                        child: Text(
                          "D",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Fluttertoast.showToast(
                              msg: "Wrong!! Hey, Dont Give up",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              backgroundColor: Colors.red,
                              textColor: Colors.black,
                              fontSize: 16.0);
                        },
                      ),
                      SizedBox(
                        height: 30,
                        width: 180,
                        child: Text(
                          "0.8 m",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ])),
                Divider(),
                SizedBox(
                  height: 50,
                  width: 400,
                  child: RaisedButton(
                    color: Colors.green.shade500,
                    child: Text(
                      "VIEW SOLUTION",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => vector_Q_1()),);
                    },
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    "GO to NEXT LESSON",
                    style: TextStyle(
                        fontFamily: 'Knewave',
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  subtitle: Text("You Are Doing Great!!",
                      style: TextStyle(color: Colors.red)),
                  leading: Image.asset(
                    'assets/Logo.png',
                    height: 300,
                  ),
                  trailing: Icon(Icons.arrow_forward,
                      size: 60.0, color: Colors.green),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Vector2()),);
                  },
                ),
                Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HTMLtext extends StatelessWidget {
  String htmlText = "";
  HTMLtext(this.htmlText);

  @override
  Widget build(BuildContext context) {


    return TeXView(
      renderingEngine: TeXViewRenderingEngine.katex(),
      loadingWidgetBuilder: (context) => Center(
        child: Column(
          children: <Widget>[
            CircularProgressIndicator(color: baseColor,),

          ],
        ),
      ),
      child: TeXViewColumn(children: [
        TeXViewDocument(htmlText,
            style: TeXViewStyle(
              textAlign: TeXViewTextAlign.Left,
              sizeUnit: TeXViewSizeUnit.Percent,
              contentColor: Colors.black,
            )),
      ]),
    );
  }
}

class Vector2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 2",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Text("অবস্থান ভেক্টর এবং একক ভেক্টর", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Image.asset('assets/vector4.png'),

                  Text("অবস্থান ভেক্টরঃ \nXYZ ত্রিমাত্রিক স্থানাঙ্ক ব্যবস্থায় মূলবিন্দু “O” এর সাপেক্ষে যে কোন বিন্দু “A” এর অবস্থান ভেক্টর নিম্নরূপে প্রকাশ করা হয়", style: TextStyle(color: Colors.black,fontSize: 16,),),
                  HTMLtext(  r"""$$ \overrightarrow{OA}=\overrightarrow{A}=\overrightarrow{r} $$ """, ),
                  Divider(color:Colors.black),Image.asset('assets/vector5.png'),
                  Text("\nএকক ভেক্টরঃ \nকোন ভেক্টরকে তার মান দ্বারা ভাগ করলে নতুন যে ভেক্টরটি পাওয়া যায় তাকে একক ভেক্টর বলে।"
                      "\nআয়ত একক ভেক্টরঃ \nত্রিমাত্রিক স্থানাঙ্ক ব্যবস্থায় তিনটি ধনাত্মক অক্ষ বরাবর যে তিনটি একক ভেক্টর কল্পনা করা হয়, তাদের আয়ত একক ভেক্টর বলে। যদি A বিন্দুর স্থানাঙ্ক (x,y,z) হয় তবে আমরা আয়ত একক ভেক্টরের সাহায্যে নিম্নরূপে প্রকাশ করতে পারি।",style:TextStyle(fontSize: 16)),
                  HTMLtext(  r"""$$\overrightarrow{A}= x\widehat{i}+y\widehat{j}+z\widehat{k}
                  \\এর\; মান\; হবে,
                  \\ A= \sqrt{x^2+y^2+z^2}$$ """, ),],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color:Colors.greenAccent,child:Column(
              children:<Widget>[ Text(" A≡(2,3,5) B≡(1,1,7) হলে নির্ণয় করঃ", style:TextStyle(fontSize: 20,),softWrap: true,),
                HTMLtext(  r""" $$ (i)\overrightarrow{AB} \\\& \\(ii)\begin{vmatrix}\overrightarrow{AB}\end{vmatrix} $$""",),
              ],),),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){
                            Fluttertoast.showToast(
                                msg: "Correct!! Well Done!!",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                 
                                backgroundColor: Colors.green,
                                textColor: Colors.black,
                                fontSize: 16.0);
                          },),
                        SizedBox(height:30,width:180,child:Text("i)(-1,-2,2) ii)3", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,
                                     
                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("i)(1,2,2)  ii)3 ", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                   
                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("i)(2,6,35) ii) 3 ", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                 
                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text(" i)(-1,2,2)  ii)12", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){
                        
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => vector_Q_2()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Vector3()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Vector3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom:50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 3",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Text("ভেক্টর যোগঃ ", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Text("দুটি ভেক্টর তখনই যোগের উপযোগী হবে যখন তারা একজাতীয় রাশি। এরূপে প্রাপ্ত যোগফল ভেক্টরকে তাদের লব্ধি বলা হয়। যেমনঃ কোন বিন্দুতে ক্রিয়ারত দুটি ত্বরণের লব্ধি ভেক্টর যোগের মাধ্যমে বের করা সম্ভব। কিন্তু বেগ ও ত্বরণের লব্ধি বের করা সম্ভব নয়।", style: TextStyle(color: Colors.black,fontSize: 16,),),
                  Divider(),
                  Image.asset('assets/vector7.png'),
                  Text("সামান্তরিক সূত্রঃ \n কোন নির্দিষ্ট বিন্দুতে দুটি ভেক্টর একই সময়ে ক্রিয়া করলে তাঁদের লব্ধি (ভেক্টর যোগফল) এ সূত্রের সাহায্যে সহজেই বের করা যায়। ",style: TextStyle(fontSize: 16)),
                  Image.asset('assets/vec_eq_3.1.PNG'),
                  Divider(),
                  Text("ভেক্টর বিয়োগঃ \nভেক্টর বিয়োগ হচ্ছে এক প্রকার ভেক্টর যোগ, যেখানে বিয়োগকৃত ভেক্টর রাশিটিকে 180 ডিগ্রী ঘুরিয়ে দিয়ে লব্ধি বের করা হয়। অর্থাৎ, P এবং -Q এর লব্ধি হচ্ছে  P হতে Q এর বিয়োগফল। -Q হল Q এর বিপরীত ভেক্টর; Q কে 180 ডিগ্রী কোণে ঘুরালেই -Q পাওয়া যাবে।\nকাজেই সামান্তরিক সূত্র থেকে পাই,", style: TextStyle(color: Colors.black,fontSize: 16,),),
                  Divider(color:Colors.blue),
                  Image.asset('assets/vector8.png'),
                  Image.asset('assets/vec_eq_3.2.PNG'),

                ],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Divider(color:Colors.black, thickness: 0.8,),
            Text("Written Question", style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,fontFamily:"Knewave" ,letterSpacing: 2.0,color:Colors.green)),
            Divider(color:Colors.black, thickness: 0.8,),
            Card(child:Column(
              children:<Widget>[ Text("চিত্রের ভেক্টরদ্বয়ের লব্ধির মান নির্ণয় কর", style:TextStyle(fontSize: 16,),softWrap: true,),
                Image.asset('assets/vector9.png'),
                Text("ANSWER:",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 22),textAlign:TextAlign.center,),
                Image.asset('assets/vector3.1.PNG'),

              ],),),

            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color:Colors.white),),
                      onPressed:(){
                        
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => vector_Q_3()));},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Vector4()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),],
        ),
      ),
    );
  }
}
class Vector4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom:50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 4",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Text("আপেক্ষিক বেগ", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Text("আপেক্ষিক বেগঃ \n আপেক্ষিক বেগ হল ভেক্টর বিয়োগের একটি বাস্তব প্রয়োগের ক্ষেত্র।", style: TextStyle(color: Colors.black,fontSize: 16,),),
                  Image.asset('assets/vector_eq_4.1.PNG'),
                  Divider(),
                  Text(Strings.relative_velocity,style: TextStyle(fontSize: 16)),
                  Image.asset('assets/relativevelocity.png'),
                  Divider(),
                  HTMLtext(  r"""$$ \;\\চিত্র \;হতে \; \tan^{-1} (\frac{3}{4}) \; কোণে\; ছাতা\; ধরতে \; হবে $$ """,),

                ],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Divider(color:Colors.black, thickness: 0.8,),
            Text("Written Question", style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,fontFamily:"Knewave" ,letterSpacing: 2.0,color:Colors.green)),
            Divider(color:Colors.black, thickness: 0.8,),
            Card(child:Column(
              children:<Widget>[ Text("ঘন্টায় 40km বেগে পূর্বদিকে চলমান একটি গাড়ির চালক ঘণ্টায় 40√3km বেগে একটি ট্রাককে উত্তর দিকে চলতে দেখল।\ni) ট্রাকটি কোনদিকে চলছিল?\nii) ট্রাকটির প্রকৃত বেগ কত?", style:TextStyle(fontSize: 16,),softWrap: true,),

                Divider(color:Colors.black,thickness: 1.2,),
                Text(" ANSWER: উত্তর দিকের সাথে 30 ডিগ্রি কোণে 80km/h বেগে " ,style:TextStyle(fontSize: 20)),
              ],),),

            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color:Colors.white),),
                      onPressed:(){
                        
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => vector_Q_4()));},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Vector5()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Vector5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom:50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 5",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Text("ভেক্টর বিভাজনঃ ", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Text("একটি ভেক্টরকে যদি দুই বা ততোধিক ভেক্টরে এমনভাবে বিভক্ত করা যায়, যাদের লব্ধি হবে মূল ভেক্টর, তবে এ বিভক্তিকরণ প্রক্রিয়াকে বলে ভেক্টর বিভাজন। বিভাজিত অংশগুলোকে মূল ভেক্টরের উপাংশ বলে।", style: TextStyle(color: Colors.black,fontSize: 16,),),
                  Divider(),
                  Image.asset('assets/resolution1.png'),
                  Divider(),
                  HTMLtext(  r"""$$ \\এখানে \; \overrightarrow{P} \;এবং \overrightarrow{Q}\;হচ্ছে \; \overrightarrow{R}\;এর\;উপাংশ\\ \;\\P=\frac{R \sin \beta}{\sin(\alpha +\beta)}
                  \\ \;\\Q=\frac{R \sin \alpha}{\sin(\alpha +\beta)}$$ """,),
                  Text("Tips: যে ভেক্টরটি নেয়া হবে সেটি বাদে বাকি দুইটির মধ্যবর্তী কোনের sine নিতে হবে ", style: TextStyle(color: Colors.black,fontSize: 16,fontWeight:FontWeight.bold),),
                  Divider(color:Colors.blue,thickness: 1.2,),
                  Text("লম্বাংশ বিভাজনঃ যদি উপাংশদ্বয় পরস্পর লম্ব হয়। সেক্ষেত্রে,",style:TextStyle(fontSize: 16)),
                  HTMLtext(  r"""$$ \\Radial \;Components
\\P=\frac{R \sin (90-\alpha)}{\sin(90)}
\\ \fcolorbox{red}{white}{${\color{black} P=R \cos \alpha }$} \\ \;
\\Q=\frac{R \sin \alpha}{\sin(90)}
\\ \fcolorbox{red}{white}{${\color{black} Q=R \sin \alpha }$} $$ """,),
                ],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Divider(color:Colors.black, thickness: 0.8,),
            Text("Written Question", style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,fontFamily:"Knewave" ,letterSpacing: 2.0,color:Colors.green)),
            Divider(color:Colors.black, thickness: 0.8,),
            Card(child:Column(
              children:<Widget>[ Text("F মানের একটি বলকে দুটি উপাংশে বিশ্লেষণ করলে, একটি উপাংশ যদি বলটির সমমানের হয় এবং এর সাথে সমকোণ উৎপন্ন করে তবে অপর উপাংশটির মান ও দিক নির্ণয় কর।", style:TextStyle(fontSize: 16,),softWrap: true,),

                Divider(color:Colors.black,thickness: 1.2,),
                Text(" ANSWER: √2F " ,style:TextStyle(fontSize: 20)),
              ],),),

            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color:Colors.white),),
                      onPressed:(){
                        
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => vector_Q_5()));},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Vector6()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Vector6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom:50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 6",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Text("নদী নৌকা সংক্রান্ত সমস্যা", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Text("u = স্রোতের বেগ \n v= নৌকা / সাঁতারুর বেগ  ",style: TextStyle(fontSize: 18)),
                  Image.asset('assets/boat.png'),
                  Divider(),
                  HTMLtext(  r"""$$ দৈর্ঘ্য বরাবর \;লব্ধির \;উপাংশ =   \\u\cos 0 + v\cos \alpha = u+v \cos \alpha \\(এটি \;দৈর্ঘ্য \;বরাবর \;আনুভুমিক\; সরণ \;ঘটায়)
\\প্রস্থ \;বরাবর \;লব্ধির \;উপাংশ = \\u\sin 0 + v\sin \alpha = v \sin \alpha \\(এটি \;নদী \;পার  \;হতে \;সাহায্য \;করে)
\\কাজেই \;নদী \;পার \;হতে \;প্রয়োজনীয় \;সময়\\ \fcolorbox{red}{white}{${\color{black} t = \frac{d}{v \sin \alpha}}$}
\\\therefore সর্বনিম্ন\; সময় \;\fcolorbox{red}{white}{${\color{black} t_{min}= \frac{d}{v}}$}
\\এক্ষেত্রে \;নৌকা \;চালানোর \;দিক, \\ \alpha = 90^o
\\অর্থাৎ \;নৌকার \;আনুভূমিক\; সরণ,\\ \fcolorbox{red}{white}{${\color{black}s=(u+v \cos \alpha)t }$}  \\
এখন\; যদি \;নৌকাটি \;সরাসরি \;বিপরীত \;বিন্দুতে \\\;যেতে \;চায় \;তাহলে\\ s=0 \Rightarrow u+v \cos \alpha=0\\
সেক্ষেত্রে\; নৌকা \;চালানোর\; দিক\; হবে,\\ \fcolorbox{red}{white}{${\color{black} \alpha =  \cos^{-1}(\frac{-u}{v})}$}\\ \;
$$ """,),],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color:Colors.greenAccent,child:Column(
              children:<Widget>[ Text("একটি নৌকা স্রোতের অনুকূলে 18km/h এবং প্রতিকূলে 6km/h বেগে চলে। নৌকাটি কোন দিকে চালনা করা হলে তা সরাসরি অপর পাড়ে পৌঁছাবে ? ", style:TextStyle(fontSize: 16,),softWrap: true,),

              ],),),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){
                            Fluttertoast.showToast(
                                msg: "Wrong!! Hey, Dont Give up",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,

                                backgroundColor: Colors.red,
                                textColor: Colors.black,
                                fontSize: 16.0);
                          },),
                        SizedBox(height:30,width:180,child:Text("45 degree", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("60 degree", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){Fluttertoast.showToast(
                                  msg: "Correct!! Well Done!!",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.green,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("120 degree", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("90 degree", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){
                         
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => vector_Q_6()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Vector7()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Vector7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom:50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 7",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Text("ভেক্টর ডট গুনন", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Text("ডট গুণনের ফলে আমরা একটি স্কেলার রাশি পাই।" , style: TextStyle(color: Colors.black,fontSize: 16,),),
                  Divider(),
                  Image.asset('assets/vector10.png',height: 250,),
                  Divider(),
                  HTMLtext(  r"""$$ \overrightarrow{A}.\overrightarrow{B}=AB \cos \theta
\\ \Rightarrow  \fcolorbox{red}{white}{${\color{black}\theta = \cos ^{-1}(\frac{\overrightarrow{A}.\overrightarrow{B}}{AB})}$}
\\এর \; সাহায্যে \; আমরা \; দুইটি \; ভেক্টরের \; মধ্যবর্তী \; \\কোণ \; নির্ণয়\; করতে \; পারি
\\\overrightarrow{A}=A_x \widehat{i}+A_y \widehat{j}+A_z \widehat{k}
\\ \overrightarrow{B}=B_x \widehat{i}+B_y \widehat{j}+B_z \widehat{k}
\\ \fcolorbox{red}{white}{${\color{black}\overrightarrow{A}.\overrightarrow{B}=A_xB_x+A_yB_y+A_zB_z}$}
$$ """,),
                  Text("দুইটি ভেক্টর পরস্পর লম্ব কিনা যাচাই করণ" , style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                  HTMLtext(  r"""$$ if \; \overrightarrow{A} \bigwedge \overrightarrow{B}=90
                  \\ \Rightarrow \cos \theta= \cos 90=0
                  \\\therefore \fcolorbox{red}{white}{${\color{black}\overrightarrow{A}.\overrightarrow{B}=0}$}
                   $$ """,),
                  Text("আয়ত একক ভেক্টরের ডট গুনফল" , style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                  HTMLtext(  r"""$$ \widehat{i}.\widehat{i}=\widehat{j}.\widehat{j}=\widehat{k}.\widehat{k}=1
                 \\ \widehat{i}.\widehat{j}=\widehat{j}.\widehat{k}=\widehat{k}.\widehat{i}=0
                  $$ """,),
                  Text("বিনিময় যোগ্যতা" , style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                  HTMLtext(  r"""$$ \overrightarrow{A}.\overrightarrow{B}=\overrightarrow{B}.\overrightarrow{A}
                  $$ """,),
                  Text("লম্ব অভিক্ষেপ এবং আনুভূমিক উপাংশ " , style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                  HTMLtext(  r"""$$  \overrightarrow{A}.\overrightarrow{B}=AB \cos \theta
                  \\ = A \times Bcos \theta
                  \\=\overrightarrow{A} \times \overrightarrow{A} \;এর \;উপর \;\overrightarrow{B}\; এর \;লম্ব \;অভিক্ষেপ \\\;বা \;আনুভূমিক \;উপাংশ
                  $$ """,),

                ],),),
            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Divider(color:Colors.black, thickness: 0.8,),
            Text("Written Question", style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,fontFamily:"Knewave" ,letterSpacing: 2.0,color:Colors.green)),
            Divider(color:Colors.black, thickness: 0.8,),
            Card(child:Column(
              children:<Widget>[ HTMLtext(  r"""$$\overrightarrow{A}=2 \widehat{i}+2\widehat{j}+2\sqrt{2}\widehat{k} $$ """,),
                Text("ভেক্টরটি X অক্ষের সাথে কত কোণ তৈরি করে", style:TextStyle(fontSize: 16,),softWrap: true,),

                Divider(color:Colors.black,thickness: 1.2,),
                Text(" ANSWER: 60 degree " ,style:TextStyle(fontSize: 20)),
              ],),),

            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => vector_Q_7()));},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Vector8()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
class Vector8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 8",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.white,
              child:Column(
                children:<Widget>[
                  Text("ভেক্টর ক্রস গুনন", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Text("ডট গুণনের ফলে আমরা একটি ভেক্টর রাশি পাই।" , style: TextStyle(color: Colors.black,fontSize: 16,),),
                  Divider(),
                  Image.asset('assets/vector10.png',height: 250,),
                  Divider(),
                  Image.asset('assets/cross1.png'),
                  Divider(color:Colors.blue,thickness: 1.5,),
                  Text("আয়ত একক ভেক্টরের ক্রস গুনফল" , style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.blue,thickness: 1.5,),
                  Image.asset('assets/cross.png'),
                  Divider(color:Colors.blue,thickness: 1.5,),
                  Text("Application" , style: TextStyle(color: Colors.black,fontSize: 22,fontFamily:"Knewave" ,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.blue,thickness: 1.5,),
                  Image.asset('assets/cross3.png'),
                  Divider(color:Colors.blue,thickness: 1.5,),
                  Text("A এবং B কে সন্নিহিত বাহু ধরে গঠিত সামন্তরিক এবং ত্রিভুজের ক্ষেত্রফল" , style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.blue,thickness: 1.5,),
                  HTMLtext(  r"""$$ সামন্তরিকের\; ক্ষেত্রফল=\mid \overrightarrow{A} \times \overrightarrow{B}\mid
                  \\ ত্রিভুজের\; ক্ষেত্রফল=\frac{1}{2}\mid \overrightarrow{A} \times \overrightarrow{B}\mid
                  $$ """,),


                ],),),
            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Divider(color:Colors.black, thickness: 0.8,),
            Text("Written Question", style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,fontFamily:"Knewave" ,letterSpacing: 2.0,color:Colors.green)),
            Divider(color:Colors.black, thickness: 0.8,),
            Card(child:Column(
              children:<Widget>[ HTMLtext(  r"""$$\overrightarrow{A}=2 \widehat{i}+2\widehat{j}+3\widehat{k}
              \\\overrightarrow{B}=2 \widehat{i}+4\widehat{j}+6\widehat{k}  $$ """,),
                Text("ভেক্টরদ্বয়কে সন্নিহিত বাহু ধরে গঠিত ত্রিভুজের ক্ষেত্রফল কত? ", style:TextStyle(fontSize: 16,),softWrap: true,),

                Divider(color:Colors.black,thickness: 1.2,),
                Text(" ANSWER: 3 sq. unit " ,style:TextStyle(fontSize: 20)),
              ],),),

            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => vector_Q_8()));},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Vector9()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
class Vector9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom:50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 9",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.white,
              child:Column(
                children:<Widget>[
                  Text("ভেক্টর ক্যালকুলাস", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Image.asset('assets/vec_eqn_9.1.PNG'),
                  Divider(color:Colors.blue,thickness: 1.5,),
                  Text("গ্রেডিয়েন্ট" , style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.blue,thickness: 1.5,),
                  Image.asset('assets/vec_eqn_9.2.PNG'),
                  Text("grad(V) দ্বারা V এর কোন নির্দিষ্ট দিকে পরিবর্তনের হার বুঝানো হয়।",style: TextStyle(fontSize: 16)),
                  Divider(color:Colors.blue,thickness: 1.5,),
                  Text("কার্ল" , style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.blue,thickness: 1.5,),

                  Text("যদি V একটি ভেক্টর ফাংশন হয় তাহলে",style: TextStyle(fontSize: 16)),
                  Image.asset('assets/vec_eqn_9.3.PNG'),
                  Divider(color:Colors.blue,thickness: 1.5,),
                  Text("ডাইভারজেন্স" , style: TextStyle(color: Colors.black,fontSize:18,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.blue,thickness: 1.5,),
                  Text("যদি V একটি ভেক্টর ফাংশন হয় তাহলে",style: TextStyle(fontSize: 16)),
                  Image.asset('assets/vec_eqn_9.4.PNG'),

                ],),),
            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Divider(color:Colors.black, thickness: 0.8,),
            Text("Written Question", style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,fontFamily:"Knewave" ,letterSpacing: 2.0,color:Colors.green)),
            Divider(color:Colors.black, thickness: 0.8,),
            Card(child:Column(
              children:<Widget>[ HTMLtext(  r"""$$\overrightarrow{A}=x^3z \widehat{i}-2y^3z^2\widehat{j}+xy^2z\widehat{k}
                $$ """,),
                Text("হয় তবে (1,2,-3) বিন্দুতে divA  নির্ণয় কর । ", style:TextStyle(fontSize: 18,),softWrap: true,),

                Divider(color:Colors.black,thickness: 1.2,),
                Text(" ANSWER: -221 " ,style:TextStyle(fontSize: 20)),
              ],),),

            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => vector_Q_9()));},),),
                  Divider(),

                  ListTile( title: Text("MOVE to NEXT TOPIC", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Graph1()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}



//Graph
class Graph1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom:50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("গ্রাফ Lesson 1",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Divider(),
                  Text( Strings.graph1, style: TextStyle(color: Colors.black,fontSize: 16,),),
                  Card(child: Image.asset('assets/Graph1.png')),
                  Divider(),
                  Text("ধরা যাক, চিত্রে একটি সরলরৈখিক ফাংশন 𝑦=𝑓(𝑥) প্লট করা হল। চিত্রে Y এর পরিবর্তন ΔY=Y2−Y1 এর জন্য X এর পরিবর্তন হল ΔX=X2−X1। কাজেই এইক্ষেত্রে স্বাধীন চলকের সাপেক্ষে অধীন চলকের পরিবর্তনের হার, অর্থাৎ এই সরলরেখার ঢালঃ  ", style: TextStyle(color: Colors.black,fontSize: 16,),),
                  HTMLtext(
                      r""" $$ \tan \theta = m= \frac{\Delta y}{\Delta x}=\frac{y_2-y_1}{x_2-x_1}$$""",
                  ),
                  Text("Tips: \n যে কোন সরলরেখার ঢাল নির্ণয়ের জন্য আমাদের উল্লম্ব অক্ষের রাশিকে আনুভূমিক অক্ষের রাশি দ্বারা ভাগ করে দেখতে হবে ফলাফলের রাশিটি কি দাঁড়ায়।\n যেমনঃ v বনাম t গ্রাফের ঢাল হবে (v/t) অর্থাৎ ত্বরণ a ", style: TextStyle(color: Colors.black,fontSize:20,fontWeight:FontWeight.bold),),
                  Divider(),
                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Graph2()),);
                    },
                  ),
                ],),),

          ],
        ),
      ),
    );
  }
}
class Graph2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom:50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 2",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Divider(),
                  Text( "সরলরেখার সমীকরণের সাধারন রুপ হলঃ y=mx+c\n যেখানে,\n m=সরলরেখার ঢাল \n c= Y অক্ষের খন্ডিতাংশ", style: TextStyle(color: Colors.black,fontSize: 16,),),
                  Card(child: Image.asset('assets/Graph3.png')),

                  Text("\n কাজেই আমরা গতীয় সমীকরণ v=u+at কে y=mx+c এর সাথে তুলনা করে একই রকম গ্রাফ পাব।\n \n এখন C=0 হলে সমীকরণটি দাড়ায়ঃ y=mx ,যা মূলবিন্দুগামী সরলরেখার সমীকরণ  ", style: TextStyle(color: Colors.black,fontSize: 16,),),
                  Card(child:Image.asset('assets/Graph4.png'),),
                  Text("গ্রাফের অন্তর্গত ক্ষেত্রের ক্ষেত্রফলঃ ", style: TextStyle(color: Colors.black,fontSize:20,fontWeight:FontWeight.bold),),
                  Divider(),
                  Text("কোন গ্রাফের Y অক্ষ এবং X অক্ষের রাশিদ্বয়কে গুন করা হলে যে রাশিটি পাওয়া যায়, তা ওই গ্রাফ দ্বারা আবদ্ধ ক্ষেত্রের ক্ষেত্রফল প্রকাশ করে। \n যেমনঃ বেগ(v) বনাম সময়(t) লেখচিত্র দ্বারা আবদ্ধ ক্ষেত্রফল সরণ প্রকাশ করে "),
                ],),),
            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Image.asset('assets/Graph2.png'),
            Card(color: Colors.greenAccent,
              child: Text("উপরের চিত্রে বেগের সর্বাধিক মান 10m/s এবং গতিকাল 8s হলে কণার সরণ কত?",style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true, ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){ Fluttertoast.showToast(
                              msg: "Correct!! Well Done!!",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,

                              backgroundColor: Colors.green,
                              textColor: Colors.black,
                              fontSize: 16.0);

                          },),
                        SizedBox(height:30,width:180,child:Text("40m", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("60m", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(height:30,width:180,child:Text("80m", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("45 m", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){
                        
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Graph_Q_2()),);},),),
                  Divider(),

                  ListTile( title: Text("MOVE to NEXT TOPIC", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("Don't Give Up Already!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Motion1()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
//Motion
class Motion1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("গতি Lesson 1",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Divider(),
                  Text(" একমাত্রিক গতি সম্পন্ন কণার গতির প্রতিটি পদের সাথে একটি করে মাত্রা জড়িত থাকে। তাই আমরা বীজগাণিতিক ভাবে এদের যোগ বিয়োগ করতে পারি। \n আমাদের মনে রাখতে হবে, এক্ষেত্রে প্রতিটি গতীয় সমীকরণে ত্বরণ সমত্বরণ হয়ে থাকে", style: TextStyle(color: Colors.black,fontSize: 16,),),
                  HTMLtext(  r""" $$ v=u  \pm at \\ v^2 =u^2 \pm 2as\\s=ut \pm \frac{1}{2}a t^2$$""",),
                  Text(" ত্বরণের ক্ষেত্রে a ধনাত্মক এবং মন্দনের ক্ষেত্রে a ঋণাত্মক হয়ে থাকে। একই ভাবে আমরা পড়ন্ত বস্তুর ক্ষেত্রে সূত্র গুলোকে লিখতে পারি,  ", style: TextStyle(color: Colors.black,fontSize: 16,),),
                  HTMLtext(
                      r""" $$v=u \pm gt \\v^2=u^2+2gh\\h=ut \pm \frac{1}{2}g t^2$$""",),
                  Text("খাড়া উপরের দিকে নিক্ষিপ্ত বস্তুুর সর্বাধিক উচ্চতায়(Hmax) উঠতে(t1) এবং নামতে(t2) সমান সময় লাগে ", style: TextStyle(color: Colors.black,fontSize:16,),),
                  HTMLtext(  r"""$$t_1=t_2=\frac{u}{g}\\\&\\H_{max}=\frac{u^2}{2g}$$""",),
                  Divider(),

                  Text("বস্তুটি যতক্ষণ পর পুনরায় নিক্ষেপন বিন্দুতে ফিরে আসে তাকে উড্ডয়নকাল(T) বলে ", style: TextStyle(color: Colors.black,fontSize:16,),),
                  HTMLtext(  r"""$$\\\;\\T=t_1+t_2=\frac{2u}{g}$$""",),
                ],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color: Colors.greenAccent,
              child: Text("9.2 m/s বেগে একটি বস্তুকে খাড়া উপড়ের দিকে নিক্ষেপ করা হল। বস্তুটি কতক্ষণ পর ভূপৃষ্ঠে ফিরে আসবে?",style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true, ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){Fluttertoast.showToast(
                              msg: "Wrong!! Hey, Dont Give up",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,

                              backgroundColor: Colors.red,
                              textColor: Colors.black,
                              fontSize: 16.0);

                          },),
                        SizedBox(height:30,width:180,child:Text("1.5 s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("2.7 s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Correct!! Well Done!!",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.green,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(height:30,width:180,child:Text("1.878 s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("2.1 s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){
                         
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Motion_Q_1()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Motion2()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Motion2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 2",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Divider(),
                  Text(Strings.motion1, style: TextStyle(color: Colors.black,fontSize: 16,),),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Image.asset('assets/Picture1.png'),
                  Text("চিত্র অনুযায়ী t সময়ে কনার বেগ,   ", style: TextStyle(color: Colors.black,fontSize: 16,),),
                  HTMLtext(  r"""$$v=\sqrt{ v_x^2+v_y^2}  $$""",),
                ],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(child: Column(
              children: <Widget>[
                Divider(color: Colors.green),
                Text("XY তলে চলমান একটি পাখি t=0s এ মূলবিন্দুতে ছিল। পাখির বেগ,", style:TextStyle(fontSize: 16,),softWrap: true,),
                HTMLtext(  r"""$$  \overrightarrow{v}=  t^2 \widehat{i}+3t \widehat{j}$$ """,),
                Text("সময়ের ফাংশন রুপে পাখির ত্বরণ কত?", style:TextStyle(fontSize: 16,),softWrap: true,),
                Divider(color: Colors.green,),],
            ),),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){ Fluttertoast.showToast(
                              msg: "Correct!! Well Done!!",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,

                              backgroundColor: Colors.green,
                              textColor: Colors.black,
                              fontSize: 16.0);
                          },),
                        SizedBox(height:30,width:180,child:Text("2t i +3j", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("3t j", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("25t", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("6t j", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){
                         
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Motion_Q_2()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Motion3()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Motion3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 3",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Card(child: Image.asset('assets/Picture2.png')),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Text("প্রক্ষেপকের গতিপথ দ্বিমাত্রিক", style: TextStyle(color: Colors.black,fontSize: 16,),),
                  Text("নিক্ষেপণ বেগ, u ", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  HTMLtext(  r"""$$u \Rightarrow  \begin{matrix}{u_x=u\cos \theta_0}\\{u_y=u \sin \theta_0}\end{matrix}  $$""",),
                  Text("অভিকর্ষজ ত্বরণ, g " , style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  HTMLtext(  r"""$$g\Rightarrow\begin{matrix}{g_x=0}\\{g_y=-g}\end{matrix}$$""",),
                  Text("তাৎক্ষণিক বেগ, v" , style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  HTMLtext(  r"""$$ v(=u+at)\Rightarrow \begin{matrix}{v_x=u_x}\\{v_y=u_y-gt}\end{matrix}$$""",),
                  Text("প্রাসের অবস্থান, s" , style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  HTMLtext(  r"""$$\overrightarrow{s}(=x \widehat{i}+y \widehat {j})\Rightarrow \begin{matrix}{x=u_xt}\\{y=u_yt-\frac{1}{2}gt^2}\end{matrix}$$""",),
                  Text("কাজেই t সময়ে প্রক্ষেপকের বেগের মান এবং দিক",style: TextStyle(fontSize: 16)),
                  HTMLtext(  r"""$$v=\sqrt{v_x^2+v_y^2} \\ \& \\tan \theta = \frac{v_y}{v_x}$$ """,),
                ],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color:Colors.greenAccent,
              child: Text("একটি ফুটবলকে ভূমির সাথে 30 ডিগ্রি কোণে 30 m/s বেগে কিক করা হল। 1 s পর ফুটবলের বেগের মান কত হবে?", style:TextStyle(fontSize: 16,),softWrap: true,),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){
                            Fluttertoast.showToast(
                                msg: "Wrong!! Hey, Dont Give up",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,

                                backgroundColor: Colors.red,
                                textColor: Colors.black,
                                fontSize: 16.0);
                          },),
                        SizedBox(height:30,width:180,child:Text("25 m/s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("24 m/s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){Fluttertoast.showToast(
                                  msg: "Correct!! Well Done!!",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.green,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("26.5 m/s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("30.3 m/s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){
                         
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Motion_Q_3()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Motion4()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Motion4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 4",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Card(child: Image.asset('assets/Picture3.png'),),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Text("প্রক্ষেপকের ক্ষেত্রে সর্বাধিক উচ্চতায়(H) উঠার জন্য প্রয়োজনীয় সময় এবং সর্বাধিক উচ্চতা থেকে নামার জন্য প্রয়োজনীয় সময় সমান", style: TextStyle(color: Colors.black,fontSize: 16,),),
                  HTMLtext(  r"""$$t_1 =t_2=\frac{usin \theta_0}{g}\\H_{max}=\frac{u^2 \sin^2 \theta_0}{2g}$$""",),
                  Text("প্রক্ষেপকটি যে সময়ে O থেকে X এ ফিরে আসে তাকে উড্ডয়নকাল বলে " , style: TextStyle(color: Colors.black,fontSize: 16,),),
                  HTMLtext(  r"""$$T =t_1+t_2=\frac{2u \sin \theta_0}{g}\\ \; $$""",),
                  Text("আনুভূমিক পাল্লাঃ প্রাসটি আনুভূমিক দিকে সর্বাধিক যে দূরত্ব অতিক্রম করে তাকে আনুভূমিক পাল্লা(R) বলে " , style: TextStyle(color: Colors.black,fontSize: 16,),),
                  HTMLtext(  r"""$$ \\ \; R = \frac{u^2 sin 2\theta_0}{g}\\ \;$$""",),
                  Text("কাজেই নিক্ষেপণ কোন 45 ডিগ্রি হলে আনুভূমিক পাল্লা সর্বাধিক হবে।" , style: TextStyle(color: Colors.black,fontSize: 16,),),
                  HTMLtext(  r"""$$ \\ \;R =\frac{u^2}{g} \\ \; $$""",),

                ],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color:Colors.greenAccent,
              child: Text("কত কোণে নিক্ষেপ করা হলে একটি প্রাসের আনুভূমিক পাল্লা তার সর্বাধিক উচ্চতার সমান হবে?", style:TextStyle(fontSize: 16,),softWrap: true,),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){
                            Fluttertoast.showToast(
                                msg: "Wrong!! Hey, Dont Give up",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,

                                backgroundColor: Colors.red,
                                textColor: Colors.black,
                                fontSize: 16.0);
                          },),
                        SizedBox(height:30,width:180,child:Text("45 degree", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("60 degree", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){Fluttertoast.showToast(
                                  msg: "Correct!! Well Done!!",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.green,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("76 degree", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("74 degree", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){
                         
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Motion_Q_4()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Motion5()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Motion5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom:50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 5",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Text("আনুভূমিক দিকে নিক্ষিপ্ত বস্তু", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Image.asset('assets/Picture4.png'),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Text("নিক্ষেপণ বেগ, u ", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  HTMLtext(  r"""$$u \Rightarrow  \begin{matrix}{u_x=u}\\{u_y=0}\end{matrix}  $$""",),
                  Text("তাৎক্ষণিক বেগ, v" , style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  HTMLtext(  r"""$$ v\Rightarrow \begin{matrix}{v_x=u}\\{v_y=u_y-gt}\end{matrix}$$""",),
                  Text("প্রাসের অবস্থান, s" , style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  HTMLtext(  r"""$$\overrightarrow{s}(=x \widehat{i}+y \widehat {j})\Rightarrow \begin{matrix}{x=u_xt=ut}\\{y=u_yt+\frac{1}{2}gt^2=\frac{1}{2}gt^2}\end{matrix}$$""",),
                  Text("কাজেই t সময়ে নিক্ষিপ্ত বস্তুর বেগের মান এবং দিক",style: TextStyle(fontSize: 16)),
                  HTMLtext(  r"""$$v=\sqrt{v_x^2+v_y^2} \\ \& \\tan \theta = \frac{v_y}{v_x}$$ """,),
                ],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color:Colors.greenAccent,
              child: Text("একখন্ড পাথরকে 115m উচু পাহারের চুড়া থেকে আনুভূমিকের সমান্তরালে ছুঁড়ে দেওয়া হল। পাথরটি পাদদেশ থেকে 92.5m দূরে যেয়ে পড়ল। পাথরটি কত দ্রুতিতে ছোঁড়া হয়েছিল? ", style:TextStyle(fontSize: 16,),softWrap: true,),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){
                            Fluttertoast.showToast(
                                msg: "Correct!! Well Done!!",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,

                                backgroundColor: Colors.green,
                                textColor: Colors.black,
                                fontSize: 16.0);
                          },),
                        SizedBox(height:30,width:180,child:Text("1086.7m", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("1075.3m", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("1214.3 m", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("1030.3 m", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){
                         
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Motion_Q_5()),);},),),
                  Divider(),

                  ListTile( title: Text("MOVE to NEXT TOPIC", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LM1()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//Laws of motion
class LM1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("রৈখিক গতিসূত্র Lesson 1",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Text("একটি সিস্টেমের উপর একই সময় একাধিক বল ক্রিয়া করতে পারে। নির্দিষ্ট সময়ে ক্রিয়ারত সকল বলের লব্ধি সিস্টেমের ভর এবং ত্বরণের গুনফলের সমান হয়।", style: TextStyle(color: Colors.black,fontSize: 16,),),
                  Divider(color: Colors.black,thickness: 1.2,),
                  Text("বস্তুর গতির দিকে বলের লব্ধি = সিস্টেমের ভর × ত্বরণ" , style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color: Colors.black,thickness: 1.2,),
                  Card(child: Image.asset('assets/LMeq1.1.PNG',width:600,)),
                ],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color:Colors.greenAccent,
              child: Text("2.33kg ভরের একটি বস্তুর উপর 5N এবং 7N মানের দুইটি বল পরস্পর 60 ডিগ্রি কোণে ক্রিয়া করে। বস্তুটির ত্বরণ কত?  ", style:TextStyle(fontSize: 16,),softWrap: true,),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){ Fluttertoast.showToast(
                              msg: "Wrong!! Hey, Dont Give up",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,

                              backgroundColor: Colors.red,
                              textColor: Colors.black,
                              fontSize: 16.0);

                          },),
                        SizedBox(
                          height: 50, width: 180,
                          child:HTMLtext(
                              r""" $$ 5.48 ms^{-2} $$ """,
                          ),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(
                              height: 50, width: 180,
                              child:HTMLtext(
                                  r""" $$ 2.48 ms^{-2} $$ """,
                              ),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(
                              height: 50, width: 180,
                              child:HTMLtext(
                                  r""" $$ 3.48 ms^{-2}  $$ """,
                              ),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Correct!! Well Done!!",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.green,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(
                              height: 50, width: 180,
                              child:HTMLtext(
                                  r""" $$ 4.48 ms^{-2} $$ """,
                              ),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){
                         
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LM_Q_1()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LM2()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class LM2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 2",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Text("রকেটের গতি", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Text("রকেটের জ্বালানির সমবেগ = Vr\n জ্বালানি হ্রাসের হার = dm/dt", style: TextStyle(color: Colors.black,fontSize: 16,),),
                  Text("জ্বালানি দ্বারা প্রযুক্ত ঊর্ধ্বমুখী ধাক্কা" , style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Card(child: Image.asset('assets/LMeq2.1.PNG',width: 800,height: 100,)),
                  Text("রকেটের উপর প্রযুক্ত ঊর্ধ্বমুখী লব্ধি বল" , style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Image.asset('assets/LMeq2.2.PNG',height: 150,),
                  Text("রকেটের ত্বরণ" , style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Card(child: Image.asset('assets/LMeq2.3.PNG',width: 800,height: 100,)),
                  Text("এখন, রকেটের গতিকালে রকেটের ভর m নিয়মিত পরিবর্তিত হবে। সাধারনতঃ দুইটি নির্দিষ্ট সময়ে আমাদের মান নির্ণয় করতে বলা হয়, যথাঃ \n (i)উৎক্ষেপণের সময় (ii)জ্বালানি শেষ হবার মুহূর্তে" , style: TextStyle(color: Colors.black,fontSize: 16,),),
                ],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color:Colors.greenAccent,
              child: Text("একটি রকেট প্রতি সেকেন্ডে 0.07 kg জ্বালানী খরচ করে। রকেট থেকে নির্গত গ্যাসের বেগ 100km/s। রকেটের উপর ধাক্কার মান কত? ", style:TextStyle(fontSize: 16,),softWrap: true,),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){ Fluttertoast.showToast(
                              msg: "Correct!! Well Done!!",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,

                              backgroundColor: Colors.green,
                              textColor: Colors.black,
                              fontSize: 16.0);

                          },),
                        SizedBox(
                          height: 50, width: 180,
                          child:HTMLtext(
                              r""" $$ 7 \times 10^3 N $$ """,
                          ),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(
                              height: 50, width: 180,
                              child:HTMLtext(
                                  r""" $$ 5 \times 10^3 N  $$ """,
                              ),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(
                              height: 50, width: 180,
                              child:HTMLtext(
                                  r""" $$ 5 \times 10^3 N   $$ """,
                              ),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){  Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(
                              height: 50, width: 180,
                              child:HTMLtext(
                                  r""" $$ 6 \times 10^3 N  $$ """,
                              ),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){
                         
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LM_Q_2()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LM3()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class LM3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 3",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Text("ভরবেগের সংরক্ষণ সূত্র", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Text("বস্তুর ভর এবং বেগের গুণফলকে ভরবেগ বলা হয়। \n অর্থাৎ ভরবেগ P" , style: TextStyle(color: Colors.black,fontSize: 16,),softWrap: true,),
                  HTMLtext(  r"""$$ p=mv $$""",),
                  Text("ক্রিয়া প্রতিক্রিয়া ছাড়া অন্য কোন বাহ্যিক বল না থাকলে নির্দিষ্ট দিকে একটি সিস্টেমের ভরবেগ সংরক্ষিত থাকে\n অর্থাৎ নির্দিষ্ট দিকে ", style: TextStyle(color: Colors.black,fontSize: 16,),softWrap: true,),
                  Text("মোট আদি ভরবেগ =মোট শেষ ভরবেগ" , style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  HTMLtext(  r"""$$ \sum \overrightarrow{P_i}=\sum \overrightarrow{P_f}
\\ \Rightarrow \sum m\overrightarrow{u}=\sum m\overrightarrow{v}
\\if\;initially\;the\; system\;was\;static\;then
\\ \sum \overrightarrow{P_f}=0
\\\Rightarrow \overrightarrow{P_{1f}}+\overrightarrow{P_{2f}}+...+\overrightarrow{P_{nf}}=0
\\\overrightarrow{P_{nf}}=-(\overrightarrow{P_{1f}}+\overrightarrow{P_{2f}}+...) $$""",),
                ],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color:Colors.greenAccent,
              child: Text("200kg ভরের একখানি স্থিরভাবে ভাসমান ছোট নৌকার দুই বিপরীত প্রান্তে দুজন সাঁতারু দাঁড়িয়ে আছেন। তাদের ভর যথাক্রমে 40kg এবং 70kg। যদি সাঁতারুদ্বয় বিপরীতদিকে একইসাথে 4m/s বেগে ঝাপ দেন তাহলে নৌকা কোন দিকে কত বেগে যাবে।", style:TextStyle(fontSize: 16,),softWrap: true,),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){ Fluttertoast.showToast(
                              msg: "Correct!! Well Done!!",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,

                              backgroundColor: Colors.green,
                              textColor: Colors.black,
                              fontSize: 16.0);

                          },),
                        SizedBox(height:30,width:180,child:Text("0.6 m/s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("0.8 m/s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(height:30,width:180,child:Text("1.2 m/s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("0.4 m/s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){
                         
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LM_Q_3()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("Don't Give Up Already!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LM4()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class LM4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 4",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Text("বলের ঘাত", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Text("খুব অল্প সময়ের জন্য ক্রিয়াশীল বলকে  ঘাত বল বলা হয়। \n ঘাত বল এবং ঘাত বলের ক্রিয়াকালের গুণফলকে বলের ঘাত বলে" , style: TextStyle(color: Colors.black,fontSize: 16,),softWrap: true,),
                  HTMLtext(  r"""$$ \overrightarrow{J}= \intop\nolimits_{t_1}^{t_2} \overrightarrow{F}dt
\\ \Rightarrow  \overrightarrow{J}= \overrightarrow{ P_f} - \overrightarrow{P_i}
=\overrightarrow{\Delta P}
\\ =m \overrightarrow{v}-m \overrightarrow{u} $$""",),
                  Text("বলের ঘাত=বল × বলের ক্রিয়াকাল \n = ভরবেগের পরিবর্তন" , style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color: Colors.blue,thickness: 1.2,),
                  Text("ধরা যাক একটি বস্তু ধনাত্মক X অক্ষ বরাবর লম্বভাবে অবস্থিত একটি প্রতিবন্ধকতাকে ধাক্কা দিয়ে -X অক্ষ বরাবর ফিরে আসল", style: TextStyle(fontSize: 16),softWrap: true,),
                  HTMLtext(  r"""$$ \overrightarrow{u}=u \widehat{i}
\\ \overrightarrow{v}= v(- \widehat{i})=-v \widehat{i}
\\ \therefore \overrightarrow{J}=J \widehat{i}=-m(u+v) \widehat{i}
\\  \fcolorbox{red}{white}{${\color{red}J=-m(u+v) }$}  $$""",),
                ],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color:Colors.greenAccent,
              child: Text("20 m/s বেগে চলমান 200kg ভরের একটি ট্রাক একটি ভারি দেওয়ালকে আঘাত করে 1.3 m/s বেগে ফিরে আসে। বলের ঘাত কত?", style:TextStyle(fontSize: 16,),softWrap: true,),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){ Fluttertoast.showToast(
                              msg: "Wrong!! Hey, Dont Give up",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,

                              backgroundColor: Colors.red,
                              textColor: Colors.black,
                              fontSize: 16.0);
                          },),
                        SizedBox(height:30,width:180,child:Text("-4800 kgm/s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Correct!! Well Done!!",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.green,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("-4260 kgm/s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(height:30,width:180,child:Text("-4650 kgm/s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("-4368 kgm/s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){
                         
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LM_Q_4()),);},),),
                  Divider(),

                  ListTile( title: Text("MOVE to NEXT TOPIC", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("Don't Give Up Already!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ALM1()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//AngularLawsofMotion
class ALM1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom:50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("কৌণিক গতিসূত্র Lesson 1",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Divider(),
                  Text("জড়তার ভ্রামকঃ\n কোন অক্ষের সাপেক্ষে ঘূর্ণায়মান দৃঢ় বস্তুর প্রতিটি কণার জড়তার ভ্রামকের সমষ্টিকে ওই দৃঢ় বস্তুর জড়তার ভ্রামক বলে। এখানে প্রতিটি কণার জড়তার ভ্রামক আমরা আলোচ্য কণার ভর এবং ঘূর্ণন অক্ষ থেকে দূরত্বের গুনফল দ্বারা পরিমাপ করে থাকি। ", style: TextStyle(color: Colors.black,fontSize: 16,),),
                  HTMLtext(  r""" $$ \sum m_i  {x_i^2}  $$""",),
                  Text("চক্রগতির ব্যাসার্ধঃ \n ঘূর্ণন অক্ষ থেকে যে দূরত্বে সম্পূর্ণ বস্তুর ভর পুঞ্জিভূত ধরলে উক্ত দূরত্বের জন্য প্রাপ্ত জড়তার ভ্রামক বস্তুটির জড়তার ভ্রামকের সমান হয় সেই দূরত্বকে আমরা চক্রগতির ব্যাসার্ধ বলে থাকি। ", style: TextStyle(color: Colors.black,fontSize: 16,),),
                  HTMLtext(
                      r""" $$\\\; K = \sqrt{\frac{ \sum m_i x_i }{\sum m_i }}$$""",

                  ),
                  Text("ভিন্ন ভিন্ন আকৃতির বস্তুর জন্য জড়তার ভ্রামক", style: TextStyle(color: Colors.black,fontSize:20,fontWeight:FontWeight.bold),),
                  Divider(color:Colors.red,thickness: 1.2,),
                  Image.asset('assets/ALM1.1.PNG'),
                ],),),
            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),

            Divider(color:Colors.black, thickness: 0.8,),
            Text("Written Question", style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,fontFamily:"Knewave" ,letterSpacing: 2.0,color:Colors.green)),
            Divider(color:Colors.black, thickness: 0.8,),
            Card(child:Column(
              children:<Widget>[ Text("একটি বৃত্তাকার পাতের ব্যাসার্ধ 0.3 m এবং প্রতি বর্গমিটার ক্ষেত্রের ভর 0.1 kg. এর কেন্দ্র দিয়ে এবং তলের অভিলম্ব ভাবে অতিক্রান্ত অক্ষের সাপেক্ষে জড়তার ভ্রামক নির্ণয় কর। ", style:TextStyle(fontSize: 18,),softWrap: true,),
                Divider(color:Colors.black,thickness: 1.2,),
                HTMLtext( r"""$$ANSWER: 1.27 \times 10^{-3} kgm^2 $$ """ ),
              ],)),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LAM_Q_1()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ALM2()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class ALM2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 2",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Divider(),
                  Text("কৌণিক গতিসূত্র এবং রৈখিক গতি সূত্রের সাদৃশ্য  ", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  HTMLtext(  r""" $$ ভরঃ  m   \Rightarrow           জড়তার \;ভ্রামকঃ \;I
\\সরণঃ s  \Rightarrow            কৌণিক \;সরনঃ \;\theta - \theta_o
\\বেগঃ v \Rightarrow      \omega
\\ত্বরণঃ a  \Rightarrow       \alpha
  $$""",),
                  Text("গতীয় সূত্রাবলীঃ ", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  HTMLtext(
                      r""" $$ v= u+at  \Rightarrow \omega = \omega_o+\alpha t
\\ s = ut+\frac{1}{2}at^2  \Rightarrow \theta - \theta_o = \omega_o t + \frac {1}{2} \alpha t^2
\\ v^2 = u^2+2as  \Rightarrow \omega^2 = \omega_o^2+2\alpha \theta
$$""",
                  ),
                  Text("ভরবেগ, গতিশক্তি এবং বল", style: TextStyle(color: Colors.black,fontSize:20,fontWeight:FontWeight.bold),),
                  HTMLtext(  r"""$$ ভরবেগঃ p=mv \Rightarrow L=I\omega
\\গতিশক্তিঃE=\frac{1}{2}mv^2 \Rightarrow E=I\omega^2
\\বলঃF=ma \Rightarrow Torque\; \tau =I\alpha
$$""",),],),),
            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color: Colors.greenAccent,
              child: Text(" একটি ধাতব গোলকের ভর 6g. এটিকে 3m দীর্ঘ একটি সুতার সাহায্যে এক প্রান্তে বেঁধে প্রতি সেকেন্ডে 4 বার ঘুরানো হচ্ছে। কৌণিক ভরবেগ নির্ণয় কর",style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true, ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){ Fluttertoast.showToast(
                              msg: "Correct!! Well Done!!",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,

                              backgroundColor: Colors.green,
                              textColor: Colors.black,
                              fontSize: 16.0);

                          },),
                        SizedBox(
                          height: 50, width: 180,
                          child:HTMLtext(
                              r""" $$ 1.36 \;kgm^2s^{-1} $$ """,
                          ),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(
                              height: 50, width: 180,
                              child:HTMLtext(
                                  r""" $$ 3.36 \;kgm^2s^{-1}  $$ """,
                              ),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(
                              height: 50, width: 180,
                              child:HTMLtext(
                                  r""" $$ 1.9 \;kgm^2s^{-1}   $$ """,
                              ),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(
                              height: 50, width: 180,
                              child:HTMLtext(
                                  r""" $$ 0.36 \;kgm^2s^{-1}  $$ """,
                              ),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LAM_Q_2()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ALM3()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class ALM3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 3",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Text("কেন্দ্রমুখী ত্বরণ এবং কেন্দ্রমুখী বল", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),softWrap: true,),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Text("বক্রপথে যে কোন গতিতেই ত্বরণ জড়িত থাকবে। বক্রপথে কোন বস্তুকে চলমান রাখার জন্য বক্রপথের কেন্দ্র অভিমুখে এক প্রকার বল ক্রিয়াশীল থাকে। এই বলকে কেন্দ্রমুখী বল বলা হয়।" , style: TextStyle(color: Colors.black,fontSize: 16,),softWrap: true,),
                  HTMLtext(  r"""$$ a_c=v \times \omega=\omega ^2r=\frac{v^2}{r}\\F_c=ma_c=m\omega ^2r=m \frac{v^2}{r}  $$""",),
                  Divider(color: Colors.blue,thickness: 1.2,),
                  Text("বক্রপথে সাইকেল আরোহীর গতি" , style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("বক্রপথে চলার সময় সাইকেল আরোহীকে প্রয়োজনীয় কেন্দ্রমুখী বল যোগান দেওয়ার জন্য উল্লম্বের সাথে একটি নির্দিষ্ট কোণ তৈরি করে বক্রপথের কেন্দ্রের দিকে হেলে থাকতে হয়। এই কোণ θ হলে", style: TextStyle(fontSize: 16),softWrap: true,),
                  HTMLtext(  r"""$$ \tan \theta = \frac{v^2}{rg} $$""",),
                  Text("Tips: θ কোণটি উল্লম্বের সাথে", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),softWrap: true,),

                ],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color:Colors.greenAccent,
              child: Text("100 ব্যাসের বৃত্তাকার পথে কোন মোটর সাইকেল আরোহী কত বেগে ঘুরলে তিনি আনুভূমিকের সাথে 60 ডিগ্রি কোণে থাকবেন?", style:TextStyle(fontSize: 16,),softWrap: true,),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){ Fluttertoast.showToast(
                              msg: "Wrong!! Hey, Dont Give up",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,

                              backgroundColor: Colors.red,
                              textColor: Colors.black,
                              fontSize: 16.0);
                          },),
                        SizedBox(height:30,width:180,child:Text("18.82 m/s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Correct!! Well Done!!",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.green,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("16.82 m/s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(height:30,width:180,child:Text("20.5 m/s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("17 m/s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LAM_Q_3()),);},),),
                  Divider(),

                  ListTile( title: Text("MOVE to NEXT TOPIC", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("Don't Give Up Already!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WPE1()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//WPE
class WPE1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom:50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("কাজ শক্তি ক্ষমতা Lesson 1",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Text("কাজ এবং ক্ষমতা", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Text("F  বল প্রয়োগের ফলে কোন বিন্দু বস্তুর x পরিমাণ সরণ হলে কাজ, W" , style: TextStyle(color: Colors.black,fontSize: 16,),softWrap: true,),
                  HTMLtext(  r"""$$ W=\overrightarrow{F}. \overrightarrow{x} $$""",),
                  Text("উৎসের কাজ সম্পাদন করার হারকে ক্ষমতা বলে। " , style: TextStyle(color: Colors.black,fontSize: 16,),softWrap: true,),
                  HTMLtext(  r"""$$ P=\frac{Work}{time}\\=\frac{W}{t}\\=\frac{\overrightarrow{F}. \overrightarrow{x}}{t}\\=\overrightarrow{F}.\frac{d \overrightarrow{x}}{dt}\\ \fcolorbox{red}{white}{${\color{red}P=\overrightarrow{F}. \overrightarrow{v}}$} $$""",),
                  Text("বিস্তৃত বস্তুর ক্ষেত্রে আমরা ভরকেন্দ্রের সরণ বিবেচনা করে থাকি", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),softWrap: true,),
                ],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Divider(color:Colors.black, thickness: 0.8,),
            Image.asset('assets/WPE1.png'),
            Card(color:Colors.greenAccent,

              child: Text("মার্কারটিকে খাড়াভাবে রাখতে হলে কত কাজ করতে হবে ?", style:TextStyle(fontSize: 16,),softWrap: true,),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){ Fluttertoast.showToast(
                              msg: "Wrong!! Hey, Dont Give up",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,

                              backgroundColor: Colors.red,
                              textColor: Colors.black,
                              fontSize: 16.0);
                          },),
                        SizedBox(height:30,width:180,child:Text("1.7 J", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("1.5 J", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Correct!! Well Done!!",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.green,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("0.0147 J", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("0.2 J", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => WPE_Q_1()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WPE2()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class WPE2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 2",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Text("ইটের স্তম্ভ তৈরিতে কৃতকাজ", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Text("ধরা যাক, \n সংখ্যক ইটকে একটির উপর আরেকটি তুলে স্তম্ভ তৈরি করতে হবে।\n এক্ষেত্রে প্রথম ইট যেহেতু কোন উল্লম্ব উচ্চতা অতিক্রম করে না কাজেই স্তম্ভের নিচের ইটের জন্য আমাদের "
                      "কোন কাজ করতে হবে না। \n এবার প্রথম ইটের উপর দ্বিতীয় ইট তুলে স্তম্ভ তৈরির কাজ শুরু করতে হবে। লক্ষণীয় হচ্ছে আমরা যখন দ্বিতীয় ইটকে প্রথম ইটের উপর রাখব, তখন দ্বিতীয় ইটের ভরকেন্দ্রের"
                      "সরণ হবে h/2 +h/2 =h. \n এভাবে অগ্রসর হলে আমরা পাই, " , style: TextStyle(color: Colors.black,fontSize: 16,),softWrap: true,),
                  HTMLtext( r"""$$ W_1 = mg (0)=0
\\W_2 = mg(h)
\\W_3=mg(2h)
\\.
\\.
\\.
\\W_n =mg(n-1)h
\\ \therefore  \sum W= W_1 +W_2+ ... +W_n
\\=0+mgh+......mg (n-1)h
\\= mgh(1+2+...+(n-1))
\\ \fcolorbox{black}{white}{${\color{red}=mgh \frac{n(n-1)}{2}= ^nC_2 \times mgh}$}  $$""",),
                ],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color:Colors.greenAccent,

              child: Text("5 kg ভরের 10 টি পাথরকে (ঘনাকৃতি , আয়তন 125 cubic meter) একটির উপর অন্যটি তুলে স্তম্ভ তৈরিতে কত কাজ করতে হবে ? ", style:TextStyle(fontSize: 16,),softWrap: true,),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){ Fluttertoast.showToast(
                              msg: "Wrong!! Hey, Dont Give up",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,

                              backgroundColor: Colors.red,
                              textColor: Colors.black,
                              fontSize: 16.0);
                          },),
                        SizedBox(height:30,width:180,child:Text("17250 J", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("12505 J", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("10505 J", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Correct!! Well Done!!",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.green,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("11025 J", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => WPE_Q_2()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WPE3()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class WPE3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom:50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 3",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Text("চৌবাচ্চা সংক্রান্ত সমস্যা", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Text("HSC Level এর গুরুত্বপূর্ণ সমস্যা হল চৌবাচ্চা খালি করা । যেহেতু  চৌবাচ্চাকে পানিশূন্য করার সময় বিভিন্ন স্তর বিভিন্ন দূরত্ব অতিক্রম করে , সেহেতু এসকল ক্ষেত্রে গড় সরণ নির্ণয় করা সুবিধাজনক ।" , style: TextStyle(color: Colors.black,fontSize: 16,),softWrap: true,),
                  Image.asset('assets/WPE2.png',),
                  Text("ধরি , চৌবাচ্চায় পানির উচ্চতা h ; ব্যাসার্ধ = r \nচিত্রমতে , h = h2 - h1 \nx গভীরতায়  dx পুরুত্বের এবং  dm ভরের একটি পানির স্তর বিবেচনা করি ।\n কাজেই এই স্তরকে উপরে তুলতে কৃতকাজ \ndW = (dm).g.x = x g dm\nভর = ঘনত্ব × আয়তন" , style: TextStyle(color: Colors.black,fontSize: 16,),softWrap: true,),
                  HTMLtext(  r"""$$ \therefore dm = \rho \pi r^2 g x dx
\\   W= \int dW
\\ = \intop_{h_1}^{h_2} \rho \pi r^2 g x dx
=\rho (\pi r^2)g \frac{h_2^2-h_1^2}{2}
\\= \rho A g (h_2-h_1) \frac{h_2+h_1}{2}
\\=\rho A g h \frac{h_2+h_1}{2} \; (h_2-h_1=h)
\\= \rho Vg \frac{h_2+h_1}{2}
\\\therefore  \fcolorbox{red}{white}{${\color{black} W=m_{water}g \frac{h_2+h_1}{2}}$}  $$""",),
                  Text("অর্থাৎ চৌবাচ্চার উপরের খালি অংশের গভীরতার সাথে চৌবাচ্চার সম্পূর্ণ গভীরতা যোগ করে 2 দ্বারা ভাগ করতে হবে", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),softWrap: true,),
                ],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Divider(color:Colors.black, thickness: 0.8,),
            Card(color:Colors.greenAccent,

              child: Text("একটি পানিপূর্ণ কুয়ার গভীরতা 10 m এবং ব্যাস 6 m । একটি পাম্প 30 মিনিটে কুয়াটিকে পানিশূন্য করতে পারে । পাম্পের ক্ষমতা বের কর ।", style:TextStyle(fontSize: 16,),softWrap: true,),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){ Fluttertoast.showToast(
                              msg: "Wrong!! Hey, Dont Give up",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,

                              backgroundColor: Colors.red,
                              textColor: Colors.black,
                              fontSize: 16.0);
                          },),
                        SizedBox(height:30,width:180,child:Text("7.1 kW", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("8.3 kW", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Correct!! Well Done!!",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.green,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("7.696 kW", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("5.64 kW", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => WPE_Q_3()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WPE4()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class WPE4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom:50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 4",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Text("দোলাক সংক্রান্ত সমস্যা", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Image.asset('assets/WPE3.png',height:280,),
                  Text("চিত্রে ,\nl = সুতার দৈঘ্য\nd= রৈখিক বিস্তার\n α= কৌণিক বিস্তার" , style: TextStyle(color: Colors.black,fontSize: 16,),softWrap: true,),
                  HTMLtext(  r"""$$ 	@A:\;E_p = mgh \;\&\; E_k = 0\\ @B: E_p = 0\; \& \;E_k = \frac{1}{2} mv^2$$ """,),
                  Text("এখানে ,v হচ্ছে সাম্যাবস্থার বেগ ; একে সর্বোচ্চ বেগও বলে । কারণ সাম্যাবস্থায় বরের বেগ সর্বোচ্চ ।" , style: TextStyle(color: Colors.black,fontSize: 16,),softWrap: true,),
                  HTMLtext(  r"""$$ mgh = \frac{1}{2}mv^2 \\ \Rightarrow v^2=2gh ......... (1)  $$""",),
                  Text("“d”দেওয়া থাকলে: ", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),softWrap: true,),
                  Image.asset('assets/WPE4.png', height:200),
                  HTMLtext(  r"""$$ from \; figure \; above
                  \\h=l-s
                  \\ According \; to \; Pythagorian\; theorem,
                  \\ l^2=d^2+s^2
                  \\ \Rightarrow s=\sqrt{l^2 -d^2}$$""",),
                  Text("h এর মান (i) নং এ বসিয়ে v এর মান নির্ণয় করা যায়", style: TextStyle(fontSize: 16),softWrap: true,),
                  Divider(color:Colors.black,),
                  Text("α”দেওয়া থাকলে: ", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),softWrap: true,),
                  Image.asset('assets/WPE5.png',height: 200,),
                  HTMLtext(  r"""$$ from \; figure \; above
                  \\s=lcos \alpha
                  \\ \therefore h=l - l\cos \alpha
                  \\ = l(1-cos \alpha)
                  \\ \Rightarrow h=2l \sin^2 \frac{\alpha}{2}$$""",),
                  Text("h এর মান (i) নং এ বসিয়ে v এর মান নির্ণয় করা যায়", style: TextStyle(fontSize: 16),softWrap: true,),
                ],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Divider(color:Colors.black, thickness: 0.8,),
            Card(color:Colors.greenAccent, child: Text("30 ডিগ্রি বিস্তারে দুলছে এমন একটি দোলকের কার্যকরী দৈর্ঘ্য 1m। সাম্যাবস্থা অতিক্রমকালে ববের বেগ কত? ", style:TextStyle(fontSize: 16,),softWrap: true,),),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){ Fluttertoast.showToast(
                              msg: "Correct!! Well Done!!",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,

                              backgroundColor: Colors.green,
                              textColor: Colors.black,
                              fontSize: 16.0);
                          },),
                        SizedBox(height:30,width:180,child:Text("1.62 m/s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("1.5 m/s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("2 m/s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("1.9 m/s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => WPE_Q_4()),);},),),
                  Divider(),

                  ListTile( title: Text("MOVE to NEXT TOPIC", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Gravity1()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Gravitation
class Gravity1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50.0),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("মহাকর্ষ Lesson 1",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Text("সার্বজনীন মহাকর্ষ সূত্র", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Image.asset('assets/gravitation1.png'),
                  Text(Strings.gravity1 , style: TextStyle(color: Colors.black,fontSize: 16,),softWrap: true,),

                  HTMLtext(  r"""$$\\ \; \\ F=G \frac{m_1 m_2}{r^2} \\G=6.673 \times 10^{-11} Nm^2kg^{-2} $$""",),
                ],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Divider(color:Colors.black, thickness: 0.8,),
            Text("Written Question", style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,fontFamily:"Knewave" ,letterSpacing: 2.0,color:Colors.green)),
            Divider(color:Colors.black, thickness: 0.8,),

            Card(color:Colors.greenAccent,
              child: Column(children: <Widget>[Text("M ভরবিশিষ্ট একটি অর্ধবৃত্তাকার তারের দৈর্ঘ্য L, m ভরবিশিষ্ট একটি কণাকে অর্ধবৃত্তের কেন্দ্রে রাখা হল। কণার উপর তার কর্তৃক প্রযুক্ত মহাকর্ষ বলের মান কত", style:TextStyle(fontSize: 16,),softWrap: true,),
                HTMLtext(  r"""$$\\\;\\ANSWER:\;F=\frac{2 \pi GMm}{R^2}$$ """,),
              ],),),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Gravity_Q_1()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Gravity2()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Gravity2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 2",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Text("মহাকর্ষ তীব্রতা এবং বিভব", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Text("মহাকর্ষীয় তীব্রতাঃ\n মহাকর্ষ ক্ষেত্রের অভ্যন্তরে কোন বিন্দুতে একটি 1 kg ভরের বস্তু স্থাপন করা হলে বস্তুটির উপর ক্রিয়ারত মহাকর্ষ বলকে মহাকর্ষ ক্ষেত্রের উক্ত বিন্দুর মহাকর্ষীয় তীব্রতা/প্রাবল্য বলে।M ভরের বস্তুর জন্য মহাকর্ষ ক্ষেত্র তৈরি হয়েছে ধরা যাক। "
                      "এর কেন্দ্র থেকে r দূরত্বের কোন বিন্দুতে m ভরের বস্তু এনে স্থাপন করা হলে যদি বস্তুটি F বল অনুভব করে তাহলে উক্ত বিন্দুর মহাকর্ষ প্রাবল্য হবে" , style: TextStyle(color: Colors.black,fontSize: 16,),softWrap: true,),

                  HTMLtext(  r"""$$\\\;\\ E= \frac{F}{m}=G\frac{M}{r^2} $$""",),
                  Text("Tips:: “M” — যার জন্য মহাকর্ষ ক্ষেত্র তৈরী হয়েছে।",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Text("মহাকর্ষীয় বিভবঃ\nঅসীম থেকে 1 kg ভরের কোন বস্তুকে মহাকর্ষ ক্ষেত্রের কোন বিন্দুতে এনে স্থাপন করতে যে পরিমান কাজ সম্পাদন করতে হয়, তাকে ঐ বিন্দুর মহাকর্ষ বিভব বলে। " , style: TextStyle(color: Colors.black,fontSize: 16,),softWrap: true,),

                  HTMLtext(  r"""$$ \\\;\\V=-\frac{GM}{r} $$""",),
                  Text("Tips:: “M” — যার জন্য মহাকর্ষ ক্ষেত্র তৈরী হয়েছে।",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  Divider(color:Colors.blue,thickness: 1.5,),
                  Text("Shell Theory",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  Text("1. A spherically symmetric body affects external objects gravitationally as though all of its mass were concentrated at a point at its centre.\n 2. If the body is a spherically symmetric shell (i.e., a hollow ball), no net gravitational force is exerted by the shell on any object inside, regardless of the object's location within the shell." , style: TextStyle(color: Colors.black,fontSize: 16,),softWrap: true,),

                ],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Divider(color:Colors.black, thickness: 0.8,),
            Text("Written Question", style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,fontFamily:"Knewave" ,letterSpacing: 2.0,color:Colors.green)),
            Divider(color:Colors.black, thickness: 0.8,),

            Card(color:Colors.greenAccent,
              child: Column(children: <Widget>[
                Text("একটি নিরেট ধাতব গোলকের ব্যাসার্ধ “a” এবং ভর “M” সমভরের পাতলা ধাতব গোলক (ফাপা) দ্বারা পরিবেষ্টিত যার ব্যাসার্ধ  “4a”। "
                    "বৃহত্তর গোলকের কেন্দ্রটি ক্ষুদ্রতর গোলকের পৃষ্ঠের উপর অবস্থিত। বৃহত্তর গোলকের পৃষ্ঠ থেকে “a”  দূরত্বের দুটি বিন্দু (P1&P2) যারা যথাক্রমে বড় গোলকের অভ্যন্তরের এবং বাইরে অবস্থিত; ঐ বিন্দুদ্বয়ের মহাকর্ষ প্রাবল্য কত?", style:TextStyle(fontSize: 16,),softWrap: true,),
                HTMLtext(  r"""$$\\\;\\ANSWER: \frac{GM}{16a^2}\& \frac{61}{900}\frac{GM}{a^2}$$ """,),
              ],),),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Gravity_Q_2()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Gravity3()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Gravity3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 3",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Text("মহাকর্ষ ক্ষেত্রে কৃতকাজ", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Image.asset('assets/gravitation4.png'),
                  Text("“M” ভরের বস্তুর জন্য ধরা যাক মহাকর্ষ ক্ষেত্র তৈরী হয়েছে। সংজ্ঞা অনুযায়ী \n1kg ভরের একটি বস্তুকে r=∞ থেকে  r=r এ আনতে কৃতকাজ -GM/r ."
                      "\n কাজেই বিপরীত ক্রমে 1kg ভরের বস্তুকে r=r দূরত্ব থেকে অসীমে নিতে কৃতকাজ  GM/r"
                      "\n কাজেই m kg ভরের বস্তুর জন্য কৃতকাজঃ" , style: TextStyle(color: Colors.black,fontSize: 16,),softWrap: true,),

                  HTMLtext(  r"""$$\\\;\\W_m=\frac{GMm}{r}\\ \;\\ \therefore W_m \propto  \frac{1}{r}$$""",),
                  Text("অর্থাৎ গুরুভার বস্তুর কেন্দ্র থেকে যদি r1=r থেকে r2=r+h দূরত্বে m ভরের বস্তুকে নেয়া হয় তাহলে কৃতকাজ হবে " , style: TextStyle(color: Colors.black,fontSize: 16,),softWrap: true,),
                  HTMLtext(  r"""$$ W_m=GMm(\frac{1}{r}-\frac{1}{r+h}) $$""""",),
                ],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Divider(color:Colors.black, thickness: 0.8,),
            Text("Written Question", style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,fontFamily:"Knewave" ,letterSpacing: 2.0,color:Colors.green)),
            Divider(color:Colors.black, thickness: 0.8,),

            Card(color:Colors.greenAccent,
              child: Column(children: <Widget>[
                Text("Superman 5 kms-1 বেগে একটি বলকে উর্ধ্বে নিক্ষেপ করলে বলটি কত উপরে উঠবে?", style:TextStyle(fontSize: 16,),softWrap: true,),
                HTMLtext(  r"""$$ANSWER: 1.6 \times 10^6 m$$ """,),
              ],),),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Gravity_Q_3()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Gravity4()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Gravity4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 4",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Text("মুক্তিবেগ", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Image.asset('assets/escapevelocity.PNG'),
                  Image.asset('assets/escapevelocit2.PNG'),
                  Text("একটি বস্তুকে নুন্যতম যে বেগে নিক্ষেপ করা হলে বস্তুটি সংশ্লিষ্ট মহাকর্ষ ক্ষেত্র অতিক্রম করে তাকে উক্ত মহাকর্ষ ক্ষেত্রের মুক্তিবেগ বলে " , style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),softWrap: true,),

                ],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Divider(color:Colors.black, thickness: 0.8,),
            Text("Written Question", style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,fontFamily:"Knewave" ,letterSpacing: 2.0,color:Colors.green)),
            Divider(color:Colors.black, thickness: 0.8,),

            Card(color:Colors.greenAccent,
              child: Column(children: <Widget>[
                Text("মুক্তিবেগের সাথে গ্রহের ব্যাসার্ধের সম্পর্ক কী?", style:TextStyle(fontSize: 16,),softWrap: true,),
                Text("Answer: সমানুপাতিক", style: TextStyle(fontSize: 20),),
              ],),),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Gravity_Q_4()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Gravity5()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Gravity5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 5",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Text("কৃত্রিম উপগ্রহ", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Image.asset('assets/gravitation5.png'),
                  Divider(color:Colors.blue),
                  Text("বেগ" , style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),softWrap: true,),
                  Divider(color:Colors.blue),
                  Text("যেহেতু এখানে মহাকর্ষ বল কেন্দ্রমুখী বলের যোগান দিয়ে থাকে",style:TextStyle(fontSize: 16)),
                  Image.asset('assets/gravity5.1.PNG'),
                  Text("পর্যায়কাল" , style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),softWrap: true,),
                  Image.asset('assets/gravity5.2.PNG'),
                  Text("T = 24 hr হলে ঐ কৃত্রিম উপগ্রহকে আমরা ভূ স্থির উপগ্রহ বলি", style: TextStyle(fontSize: 18,color:Colors.blue[900])),
                  Divider(color:Colors.black),
                  Text("উচ্চতা" , style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),softWrap: true,),
                  Image.asset('assets/gravity5.3.PNG'),

                ],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Divider(color:Colors.black, thickness: 0.8,),
            Text("Written Question", style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,fontFamily:"Knewave" ,letterSpacing: 2.0,color:Colors.green)),
            Divider(color:Colors.black, thickness: 0.8,),

            Card(color:Colors.greenAccent,
              child: Column(children: <Widget>[
                Text("ভুস্থির উপগ্রহের উচ্চতা নির্ণয় কর", style:TextStyle(fontSize: 16,),softWrap: true,),
                Text("Answer: 35935 km", style: TextStyle(fontSize: 20),),
              ],),),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Gravity_Q_5()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Gravity6()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Gravity6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom:50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 6",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              //color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Text("g এর তারতম্য", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Image.asset('assets/gravitation6.PNG',),
                  Image.asset('assets/gravitation7.png'),

                ],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Divider(color:Colors.black, thickness: 0.8,),
            Text("Written Question", style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,fontFamily:"Knewave" ,letterSpacing: 2.0,color:Colors.green)),
            Divider(color:Colors.black, thickness: 0.8,),

            Card(color:Colors.greenAccent,
              child: Column(children: <Widget>[
                Text("পৃথিবীর কৌণিক বেগ বর্তমান বেগের কতগুণ হলে নিরক্ষীয় অঞ্চল থেকে একটি বস্তু মহাশূন্যে বিলীণ হয়ে যাবে?", style:TextStyle(fontSize: 16,),softWrap: true,),
                Text("Answer: 17 ", style: TextStyle(fontSize: 20),),
              ],),),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Gravity_Q_6()),);},),),
                  Divider(),

                  ListTile( title: Text("MOVE to NEXT TOPIC", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Elasticity1()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



//Elasticity
class Elasticity1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom:50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("স্থিতিস্থাপকতা Lesson 1",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Divider(),
                  Text(" পীড়নঃ কোন বস্তুর প্রতি একক ক্ষেত্রফলে প্রযুক্ত আকার পরিবর্তনকারী বলকে আমরা পীড়ন বলি।", style: TextStyle(color: Colors.black,fontSize: 16,),),
                  Image.asset('assets/elasticity1.1.PNG'),
                  Text(" বিকৃতিঃ বস্তুর একক মাত্রার পরিবর্তনকে বিকৃতি বলা হয়ে থাকে।\n এটি একক বিহীন।  ", style: TextStyle(color: Colors.black,fontSize: 16,),),
                  Image.asset('assets/Elas1.1.PNG'),
                  Text("এখানে মাত্রা \"x\" রৈখিক(longitudinal), আয়তনিক(Bulk), কৃন্তন হয়ে থাকে ", style: TextStyle(color: Colors.black,fontSize:16,),),
                  Image.asset('assets/Elast1.2.PNG'),
                  Divider(),
                  Image.asset('assets/Longitudinal_Strain.png'),
                  Divider(),
                  Image.asset('assets/shear_strain.png'),
                  Divider(color:Colors.black,thickness:1.1),
                  Text("হুকের সুত্রঃ\nস্থিতিস্থাপক সীমার মাঝে পীড়ন বিকৃতির সমানুপাতিক।এই সমানুপাতিক ধুবক কে আমরা স্থিতিস্থাপক গুনাংক বলি।", style: TextStyle(color: Colors.black,fontSize:16,),),

                ],),),
            Card(child: Image.asset('assets/Picture 6.png')),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color: Colors.greenAccent,
              child: Text("1 বর্গ মিলিমিটার প্রস্থচ্ছেদের ক্ষেত্রফল এবং 10m দীর্ঘ একটি তারের নিচের প্রান্তে 10kg ওজন ঝুলিয়ে দেয়া হল। তারের উপর পীড়ন কত?",style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true, ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){ Fluttertoast.showToast(
                              msg: "Wrong!! Hey, Dont Give up",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,

                              backgroundColor: Colors.red,
                              textColor: Colors.black,
                              fontSize: 16.0);

                          },),
                        SizedBox(
                          height: 50, width: 180,
                          child:HTMLtext(
                              r""" $$ 45 \times 10^6 Nm^{-2} $$ """,
                          ),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(
                              height: 50, width: 180,
                              child:HTMLtext(
                                  r""" $$ 60 \times 10^6 Nm^{-2}$$ """,
                              ),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(
                              height: 50, width: 180,
                              child:HTMLtext(
                                  r""" $$ 78 \times 10^6 Nm^{-2}$$ """,
                              ),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Correct!! Well Done!!",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.green,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(
                              height: 50, width: 180,
                              child:HTMLtext(  r""" $$ 98 \times 10^6 Nm^{-2} $$ """,
                              ),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Elasticity_Q_1()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Elasticity2()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Elasticity2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom:50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 2",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Divider(),
                  Text(" ইয়াংয়ের গুনাংকঃ ", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  HTMLtext(  r""" $$ Y = \frac{Longitudinal\; Stress}{Longitudinal\;Strain}\\\;
\\=\frac{(F/A)}{(\Delta L/L)}\\\;
\\=\frac{FL}{A \Delta L}
$$""",),
                  Text("যদি দৈর্ঘ্য বরাবর M ভর ঝুলানো হয় তাহলে F = Mg",style:TextStyle(fontSize: 16),), Divider(),
                  Text(" কৃন্তন গুনাংকঃ  ", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  HTMLtext(  r""" $$ \\\; \eta = \frac{Shearing \:Stress}{Shearing \; Strain}\\\;\\=\frac{F/A}{\tan \theta}$$""",),
                  Text("আয়তন গুনাংকঃ ", style: TextStyle(color: Colors.black,fontSize:20,fontWeight: FontWeight.bold),),
                  HTMLtext(  r"""$$B =\frac{1}{K}\\\;\\= \frac{আয়তন\; পীড়ন}{আয়তন\; বিকৃতি}
                  \\\;\\ = \frac{F/A}{\Delta V/ V}
                  \\\;
                  \\=\frac{Applied\; Pressure \times Volume}{\Delta V}  $$""",),
                  Divider(),

                  Text("এখানে K হচ্ছে সংনম্যতা। ", style: TextStyle(color: Colors.black,fontSize:16,),),Divider(),
                  Text("পয়সনের অনুপাতঃ", style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  HTMLtext(  r"""$$ \sigma = \frac{Lateral \; Strain}{Longitudinal \; Strain}\\\;\\=\frac {\frac{- \Delta R}{R}}{\frac{\Delta L}{L}}$$""",),
                ],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color: Colors.greenAccent,
              child:Column(children:<Widget>[
                Text("1 বর্গ মিলিমিটার প্রস্থছেদ বিশিষ্ট একটি ইস্পাতের তারের দৈর্ঘ্য 5\%  বৃদ্ধি করতে কত বল প্রয়োগ করতে হবে?",style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true, ),
                HTMLtext(  r"""$$Given\; Y = 2\times 10^{11} \; Nm^{-2}$$""",),]
              ),),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){Fluttertoast.showToast(
                              msg: "Wrong!! Hey, Dont Give up",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,

                              backgroundColor: Colors.red,
                              textColor: Colors.black,
                              fontSize: 16.0);

                          },),
                        SizedBox(height:30,width:180,child:Text("50000 N", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text(" 1000 N", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Correct!! Well Done!!",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.green,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(height:30,width:180,child:Text("10000 N", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("10 N", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Elasticity_Q_2()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Elasticity3()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Elasticity3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 3",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.greenAccent[100],
              child:Column(
                children:<Widget>[
                  Divider(),
                  Text(" সঞ্চিত স্থিতিস্থাপক শক্তি ", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  HTMLtext(  r""" $$
সঞ্চিত\; স্থিতিস্থাপক\; শক্তি \\= \frac{1}{2} \times পীড়ন \times বিকৃতি \times আয়তন \;\\\;
\\কাজেই\; শক্তি \;ঘনত্ব \\\;
\\= \frac{ সঞ্চিত \;শক্তি}{আয়তন}
\\ \;
 \\= \frac{1}{2} \times পীড়ন \times বিকৃতি
$$""",),Divider()],),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Divider(color:Colors.green,thickness: 2.0,),
            Card(child:Column(children:<Widget>[
              Text("কোন ধাতুর ইয়াংয়ের গুনাংক এবং পীড়ন যথাক্রমে",style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true, ),
              HTMLtext(  r"""$$1 \times 10^{11}\; Nm^{-2}\; And \;1.96 \times 10^{6} Nm^{-2}$$""",),
              Text("এর একক আয়তনে সর্বাধিক কত শক্তি সঞ্চিত হতে পারে। ",style: TextStyle(fontSize: 16,),softWrap: true,),]
            ),),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(color:Colors.green,thickness: 2.0,),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){Fluttertoast.showToast(
                              msg: "Wrong!! Hey, Dont Give up",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,

                              backgroundColor: Colors.red,
                              textColor: Colors.black,
                              fontSize: 16.0);

                          },),
                        SizedBox(height:30,width:180,child:Text("21 J/m^3", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Correct!! Great Job!!",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.green,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text(" 19.208 J/m^3", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(height:30,width:180,child:Text("18 J/m^3", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("10 J/m^3", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Elasticity_Q_3()),);},),),
                  Divider(),

                  ListTile( title: Text("MOVE to NEXT TOPIC", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Fluid1()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Fluid
class Fluid1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom:50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("প্রবাহী Lesson 1",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,

        ),
        body: ListView(
          children: <Widget>[
            Card(

              elevation: 20.0,
              color: Colors.greenAccent[100],
              child: Text(Strings.fluid_string1,style: TextStyle(color: Colors.black,fontSize: 16),),),
            HTMLtext(
                r""" $$ \\\;\\T = \frac{F}{L}\\ \;$$ """,
              // Katex for fast render and MathJax for quality render.
            ),
            Divider(color:Colors.black),

            Card(

              child: Image.asset('assets/surfaceTension.png'),
            ),
            Card(color: Colors.greenAccent,
              child: Text(Strings.fluid_string2,style: TextStyle(color: Colors.black,fontSize: 16),),

            ),
            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color: Colors.greenAccent,
              child: Text(Strings.fluid_quiz,style: TextStyle(color: Colors.black,fontSize: 16),),
            ),
            Card(
              child: Column(

                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:250,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),

                          onPressed:(){
                            Fluttertoast.showToast(
                                msg: "Correct!! Well Done!!",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,

                                backgroundColor: Colors.green,
                                textColor: Colors.black,
                                fontSize: 16.0);},),
                        SizedBox(height:30,width:150,child:Text("0.0728 N/m",
                          style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:250,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(height:30,width:150,child:Text("0", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:250,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                          onPressed:(){
                            Fluttertoast.showToast(
                                msg: "Wrong!! Hey, Dont Give up",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,

                                backgroundColor: Colors.red,
                                textColor: Colors.black,
                                fontSize: 16.0);
                          },),
                        SizedBox(height:30,width:150,child:Text("0.092 N/m",
                          style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),

                  SizedBox(height: 50,width:250,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                          onPressed:(){
                            Fluttertoast.showToast(
                                msg: "Wrong!! Hey, Dont Give up",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,

                                backgroundColor: Colors.red,
                                textColor: Colors.black,
                                fontSize: 16.0);
                          },), //D
                        SizedBox(height:30,width:150,child:Text("0.7 N/m",
                          style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Fluid_Q_1()),
                        );
                      },),
                  ),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("Don't Give Up Already!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Fluid2()) );
                    },

                  ),
                  Divider(),
                ],
              ),

            ),
          ],
        ),
      ),
    );

  }
}
class Fluid2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 2",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,

        ),
        body: ListView(

          children: <Widget>[
            Card(
                elevation: 20.0,
                color: Colors.greenAccent[100],
                child:Column(
                  children:<Widget>[
                    Divider(),
                    Text(Strings.fluid_string3,style: TextStyle(color: Colors.black,fontSize: 16),),
                    Image.asset('assets/fuid2.1.PNG'),
                    Text(Strings.fluid_string4,style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true,),
                    Image.asset('assets/fluid2.2.PNG'),
                    Text(Strings.fluid_string5,style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true,),
                    Image.asset('assets/fluid2.3.PNG'),
                    Text(Strings.fluid_string6,style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true,),
                  ],)
            ),

            Card(color: Colors.greenAccent,
              child:Column(children: <Widget>[



              ]),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color: Colors.greenAccent,
              child: Text(Strings.fluid_quiz2,style: TextStyle(color: Colors.black,fontSize: 16),),
            ),
            Card(
              child: Column(

                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:250,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),

                          onPressed:(){
                            Fluttertoast.showToast(
                                msg: "Wrong!! Hey, Dont Give up",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,

                                backgroundColor: Colors.red,
                                textColor: Colors.black,
                                fontSize: 16.0);},),
                        SizedBox(
                          height: 50, width: 150,
                          child:HTMLtext(
                              r""" $$ 4\pi r^2 $$ """,
                            // Katex for fast render and MathJax for quality render.
                          ),),
                      ],),),


                  Divider(),

                  SizedBox(height: 50,width:250,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(height:30,width:150,child:Text("0", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:250,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(
                              height: 50, width: 150,
                              child:HTMLtext(
                                  r""" $$ 4\pi r^2T  $$ """,
                                   // Katex for fast render and MathJax for quality render.
                              ),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:250,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Correct!! Well Done!!",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.green,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(
                              height: 50, width: 150,
                              child:HTMLtext(
                                  r""" $$ 8\pi r^2T  $$ """,
                                   // Katex for fast render and MathJax for quality render.
                              ),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => fluid_Q_2()),
                        );
                      },),
                  ),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("Don't Give Up Already!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Fluid3()),);},

                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Fluid3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 3",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(

          children: <Widget>[
            Card(
                elevation: 20.0,
                color: Colors.greenAccent[100],
                child:Column(
                  children:<Widget>[
                    Divider(),
                    Text(Strings.fluid_string7,style: TextStyle(color: Colors.black,fontSize: 16),),
                    HTMLtext(

                        r""" $$   F= \eta A \frac{\mathrm{d} v}{\mathrm{d} y} $$ """,
                         // Katex for fast render and MathJax for quality render.
                    ),Text(Strings.fluid_string8,style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true,),
                  ],)
            ),
            Card(color: Colors.greenAccent,
              child:Column(children: <Widget>[

              ]),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color: Colors.greenAccent,
              child: Text(Strings.fluid_quiz3,style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true, ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:250,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){
                            Fluttertoast.showToast(
                                msg: "Wrong!! Hey, Dont Give up",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,

                                backgroundColor: Colors.red,
                                textColor: Colors.black,
                                fontSize: 16.0);},),
                        SizedBox(height:30,width:150,child:Text("1.5 N", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:250,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(height:30,width:150,child:Text("0.73 N", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:250,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Correct!! Well Done!!",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.green,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(height:30,width:150,child:Text("0.03875 N", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:250,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:150,child:Text("0.5 N", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Fluid_Q_3()),
                        );
                      },),
                  ),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("Don't Give Up Already!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Fluid4()), );
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}
class Fluid4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 4",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,

        ),
        body: ListView(

          children: <Widget>[
            Card(
                elevation: 20.0,
                color: Colors.greenAccent[100],
                child:Column(
                  children:<Widget>[
                    Divider(),
                    Text(Strings.fluid_string9,style: TextStyle(color: Colors.black,fontSize: 16),),
                    HTMLtext(

                        r""" $$   F_v =6\pi \eta vr $$ """,

                    ),Text("সান্দ্র তরলের মাঝে দিয়ে পড়ন্ত বস্তুর জন্য আমরা বলতে পারি",style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true,),
                    HTMLtext(
                        r"""$$\sum F = W - U- F_v = ma \\ W=বস্তুর\; ওজন \\U=ঊর্ধ্বমুখী \;প্লবতা  $$""", ),
                    Text(Strings.fluid_string10,style: TextStyle(color: Colors.black,fontSize: 16),),
                    HTMLtext(   r"""$$\\ \;\\v_t= \frac{2}{9} \frac{r^2 (\rho_{solid}-\rho_{liquid})g}{\eta}$$""",),

                  ],)
            ),

            Card(color: Colors.greenAccent,
              child:Column(children: <Widget>[



              ]),),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color: Colors.greenAccent,
              child: Text(Strings.fluid_quiz4,style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true, ),
            ),
            Card(
              child: Column(

                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:250,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),

                          onPressed:(){
                            Fluttertoast.showToast(
                                msg: "Wrong!! Hey, Dont Give up",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,

                                backgroundColor: Colors.red,
                                textColor: Colors.black,
                                fontSize: 16.0);},),
                        SizedBox(
                          height: 50, width: 150,
                          child:HTMLtext(
                              r"""$$1.99 \times 10^{-2}$$ """,
                            // Katex for fast render and MathJax for quality render.
                          ),),
                      ],),),

                  Divider(),

                  SizedBox(height: 50,width:250,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(
                              height: 50, width: 150,
                              child:HTMLtext(
                                  r"""$$4.2 \times 10^{-5}$$ """,
                                // Katex for fast render and MathJax for quality render.
                              ),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:250,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(
                              height: 50, width: 150,
                              child:HTMLtext(
                                  r"""$$3.99 \times 10^{-5}$$ """,
                                // Katex for fast render and MathJax for quality render.
                              ),),

                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:250,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Correct!! Well Done!!",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.green,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(
                              height: 50, width: 150,
                              child:HTMLtext(
                                  r"""$$1.99 \times 10^{-5}$$ """,

                              ),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Fluid_Q_4()),
                        );
                      },),
                  ),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("Don't Give Up Already!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Fluid5()),
                      );

                    },

                  ),
                  Divider(),
                ],
              ),

            ),
          ],
        ),


      ),
    );

  }
}
class Fluid5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 5",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
                elevation: 20.0,
                color: Colors.greenAccent[100],
                child:Column(
                  children:<Widget>[
                    Divider(),
                    Text(Strings.fluid_string11,style: TextStyle(color: Colors.black,fontSize: 16),),
                    HTMLtext(

                        r""" $$   \\T=\frac{hr \rho g}{2\cos\theta} $$ """,

                    ),Text("পানির উত্থান হলে h ধনাত্মক এবং অবনমন হলে ঋণাত্মক হয়ে থাকে।",style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true,),

                  ],)
            ),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color: Colors.greenAccent,
              child: Text(Strings.fluid_quiz5,style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true, ),
            ),
            Card(
              child: Column(


                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:250,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){
                            Fluttertoast.showToast(
                                msg: "Correct!! Well Done!!",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,

                                backgroundColor: Colors.green,
                                textColor: Colors.black,
                                fontSize: 16.0);},),
                        SizedBox(height:30,width:150,child:Text("0.1469 m", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),

                  Divider(),

                  SizedBox(height: 50,width:250,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(height:30,width:150,child:Text("0.376m", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:250,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(height:30,width:150,child:Text("2.3 m", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:250,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:150,child:Text("0.9 m", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Fluid_Q_5()),);},),),
                  Divider(),

                  ListTile( title: Text("MOVE to NEXT TOPIC", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("Don't Give Up Already!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SHM1()),);

                    },

                  ),
                  Divider(),
                ],
              ),

            ),
          ],
        ),


      ),
    );

  }
}
//SHM
class SHM1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("SHM Lesson 1",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
                elevation: 20.0,
                color: Colors.greenAccent[100],
                child:Column(
                  children:<Widget>[
                    Divider(),
                    Text(Strings.shm1,style: TextStyle(color: Colors.black,fontSize: 16),),
                    HTMLtext(

                        r""" $$ \\a \propto -x
\\Restoring \; Force, F = -kx \Rightarrow  ma = -kx
\\a =-(k/m)x
\\  \frac{\mathrm{d^2}x }{\mathrm{d} x^2} = - \omega^2 x \;[Assuming\; \omega^2=\frac{k}{m}]
\\ Therefore \; the \; differential \; equation
\\ \;of\;SHM:
\\\frac{\mathrm{d^2}x }{\mathrm{d} x^2} + \omega^2 x=0
$$ """,

                    ),Text(Strings.shm2,style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true,),
                    HTMLtext(

                        r""" $$ x=A\sin (\omega t + \delta )$$"""
                      ,

                    ),
                    Text(Strings.shm3,style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true,),

                  ],)
            ),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color: Colors.greenAccent,
              child: Text(Strings.shm_quiz1,style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true, ),
            ),
            Card(
              child: Column(

                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:250,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){
                            Fluttertoast.showToast(
                                msg: "Wrong!! Hey, Dont Give up",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,

                                backgroundColor: Colors.red,
                                textColor: Colors.black,
                                fontSize: 16.0);
                          },),
                        SizedBox(height:30,width:150,child:Text("0.5 rad", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),

                  Divider(),

                  SizedBox(height: 50,width:250,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(height:30,width:150,child:Text("0.05 rad", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:250,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Correct!! Well Done!!",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.green,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(height:30,width:150,child:Text("0.005 rad", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:250,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:150,child:Text("5 rad", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => shm_Q_1()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("Don't Give Up Already!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SHM2()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class SHM2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 2",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
                elevation: 20.0,
                color: Colors.greenAccent[100],
                child:Column(
                  children:<Widget>[
                    Divider(),
                    Text("বেগঃ ",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:FontWeight.bold),),
              HTMLtext(

                        r""" $$ \\v= \frac{\mathrm{d} x}{\mathrm{d} t}
\\=A \omega \cos(\omega t + \delta)
\\=\omega  \sqrt{A^2 - x^2}
\\= \begin{matrix}v_{max} = \omega A & when \;x=0\\v_{min}=0\;&when\; x=A\end{matrix}
$$ """,
                      // Katex for fast render and MathJax for quality render.
                    ),
              Text("ত্বরণঃ",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:FontWeight.bold),softWrap: true,),

              HTMLtext(
                        r""" $$a= \frac{\mathrm{d} v}{\mathrm{d} t}
\\=-A \omega^2 \sin(\omega t + \delta)
\\= - \omega^2x
\\= \begin{matrix}\mid a_{max}\mid = \omega^2 A & when \;x=A\\a_{min}=0\;&when\; x=0\end{matrix}
$$"""
                      ,

                    ),
                    Divider(),
                    Text("শক্তির রাশিমালা",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),softWrap: true,),
                    HTMLtext(

                        r""" $$গতিশক্তি, \\E_p = \frac{1}{2}kx^2\\ \;
\\বিভবশক্তি,\\E_k = \frac{1}{2}k(A^2 - x^2)\\ \;
\\মোটশক্তি,\\ \sum E = E_p+E_k = \frac{1}{2}k A^2
 $$""",
                      // Katex for fast render and MathJax for quality render.
                    ),

                  ],)
            ),

            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color: Colors.greenAccent,
              child: Text("SHM সম্পন্ন একটি কণার সর্বোচ্চ বেগ 0.02 meter per second. বিস্তার 0.004m হলে কনাটির পর্যায়কাল কত?",style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true, ),
            ),
            Card(
              child: Column(

                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:250,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){
                            Fluttertoast.showToast(
                                msg: "Correct!! Well Done!!",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,

                                backgroundColor: Colors.green,
                                textColor: Colors.black,
                                fontSize: 16.0);
                          },),
                        SizedBox(height:30,width:150,child:Text("1.256 s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),

                  Divider(),

                  SizedBox(height: 50,width:250,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(height:30,width:150,child:Text("1.6 s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:250,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(height:30,width:150,child:Text("3 s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:250,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:150,child:Text("3.2s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => shm_Q_2()),);},),),
                  Divider(),

                  ListTile( title: Text("MOVE to NEXT TOPIC", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("Don't Give Up Already!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Wave1()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//Wave
class Wave1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("তরঙ্গ Lesson 1",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
                elevation: 20.0,
                color: Colors.greenAccent[100],
                child:Column(
                  children:<Widget>[
                    Divider(),
                    Text("অগ্রগামী তরঙ্গ : \n তরঙ্গ বিস্তৃত মাধ্যমের এক স্থান থেকে অন্য স্থানে সঞ্চালিত হয়। ",style: TextStyle(color: Colors.black,fontSize: 16,),),
                    Image.asset('assets/wave1.1.PNG'),
                    Text("গানিতিক সমস্যা সমাধানের জন্য মনে রাখতে হবে “x” এর সহগ 1 রেখে সাধারণ সমীকরণের সাথে তুলনা করতে হবে।",style: TextStyle(color: Colors.black,fontSize: 16,),softWrap: true,),
                  ],)
            ),
            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color: Colors.greenAccent,
              child: Text("y=1.15\sin(2000t+0.01x) থেকে বিস্তার এবং তরঙ্গ দৈর্ঘ্য নির্ণয় কর",style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true, ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){
                            Fluttertoast.showToast(
                                msg: "Correct!! Well Done!!",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,

                                backgroundColor: Colors.green,
                                textColor: Colors.black,
                                fontSize: 16.0);
                          },),
                        SizedBox(height:30,width:180,child:Text("1.15 m & 628m", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("1.1m & 640m", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(height:30,width:180,child:Text("2m & 580m", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("3m & 460m", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => wave_Q_1()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("Don't Give Up Already!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Wave2()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Wave2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 2",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
                elevation: 20.0,
                color: Colors.greenAccent[100],
                child:Column(
                  children:<Widget>[
                    Divider(),
                    Text("স্থির তরঙ্গঃ\nস্থির তরঙ্গ মাধ্যমের একটি নির্দিষ্ট স্থানে সীমাবদ্ধ থাকে।স্থির তরঙ্গের সমীকরণে একটি sine এবং একটি cosine অংশ থাকে। আমরা গানিতিক সমস্যা সমাধানের জন্য কেবলমাত্র ”x” এবং “t” এর সহগ বিবেচনা করব।",
                      style: TextStyle(color: Colors.black,fontSize: 16,),),
                    Image.asset('assets/wave2.1.PNG'),
                    Text("সুস্পন্দ বিন্দুঃ যে স্থানে বিস্তার সর্বাধিক (Antinode)\nনিস্পন্দ বিন্দুঃ যে স্থানে বিস্তার শূন্য (Node)\nপর পর দুইটি সুস্পন্দ বিন্দুর মধকার দূরত্ব = পর পর দুটি নিস্পন্দ বিন্দুর মধ্যকার দূরত্ব =λ/2\nপর পর দুইটি সুস্পন্দ এবং নিস্পন্দ বিন্দুর মধ্যকার দূরত্ব=λ/4",style: TextStyle(color: Colors.black,fontSize: 16,),softWrap: true,),
                  ],)
            ),
            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color: Colors.greenAccent,
              child: Text("কোন একটি সীমাবদ্ধ মাধ্যমে সৃষ্ট স্থির তরঙ্গের কম্পাংক 480Hz । তরঙ্গের পর পর 2 টি নিস্পন্দ বিন্দুর মধ্যকার দূরত্ব 0.346m। মাধ্যমের তরঙ্গের বেগ নির্ণয় কর। ",style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true, ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){Fluttertoast.showToast(
                              msg: "Wrong!! Hey, Dont Give up",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,

                              backgroundColor: Colors.red,
                              textColor: Colors.black,
                              fontSize: 16.0);

                          },),
                        SizedBox(height:30,width:180,child:Text("340 m/s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("320 m/s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(height:30,width:180,child:Text("328 m/s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Correct!! Well Done!!",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.green,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("332.2 m/s", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => wave_Q_2()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("Don't Give Up Already!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Wave3()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Wave3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 3",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
                elevation: 20.0,
                color: Colors.greenAccent[100],
                child:Column(
                  children:<Widget>[
                    Divider(),
                    Text(Strings.wave1, style: TextStyle(color: Colors.black,fontSize: 16,),),
                    Image.asset('assets/wave3.1.PNG'),

                  ],)
            ),
            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color: Colors.greenAccent,
              child: Text(Strings.wave_quiz1,style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true, ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){ Fluttertoast.showToast(
                              msg: "Correct!! Well Done!!",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,

                              backgroundColor: Colors.green,
                              textColor: Colors.black,
                              fontSize: 16.0);

                          },),
                        SizedBox(height:30,width:180,child:Text("517 Hz", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("508 Hz", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(height:30,width:180,child:Text("512 Hz", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("520 Hz", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => wave_Q_3()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("Don't Give Up Already!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Wave4()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Wave4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom:50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 4",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
                elevation: 20.0,
                color: Colors.greenAccent[100],
                child:Column(
                  children:<Widget>[
                    Divider(),
                    Text(" তীব্রতা এবং তীব্রতা লেভেল:\nWeber Fechner এর সুত্রনুসারে,শব্দোচ্চতা তীব্রতার 10 ভিত্তিক logarithm এর সমানুপাতিক", style: TextStyle(color: Colors.black,fontSize: 16,),),
                    HTMLtext(

                        r""" $$  S \propto  \log_{10}I \\Standard\;Intensity \; of \; Sound: \\I_o = 10^{-12} Wm^{-2} $$""",

                    ),
                    Text(" ধরা যাক, দুইটি কম্পাংকের শব্দের তীব্রতা এবং শব্দোচ্চতা যথাক্রমে:", style: TextStyle(color: Colors.black,fontSize: 16,),),
                    HTMLtext(

                        r""" $$ S\rightarrow I \;and\; S_o\rightarrow I_o\\S =K \log_{10}I \\ S_o=K\log_{10}I_o$$""",

                    ),
                    Text("তাহলে শব্দোচ্চতার পার্থক্য:\n", style: TextStyle(color: Colors.black,fontSize: 16,),),
                    HTMLtext(  r"""$$ \beta = S-S_0=K\;log_{10}{\frac{I}{I_o}}
\\\beta \;কে \;তীব্রতা\; লেভেল\; বলে।
\\In \;dB \; \beta =10log_{10}{(\frac{I}{I_o})}dB \\শব্দের \;তীব্রতা\; I_1 \;থেকে \;পরিবর্তিত \;হয়ে\; \\I_2\; হলে\; তীব্রতা\; লেভেলের \;পরিবর্তন:\;
\\\Delta \beta =10log_{10}({\frac{I_2}{I_1}})dB \\অনুরুপভাবে \;উৎসের \;ক্ষমতা \;P_1 \;থেকে \;P_2 \;তে \\ পরিবর্তিত \;হলে\;
\\\Delta \beta =10log_{10}({\frac{P_2}{P_1}})dB
 $$""",),],)
            ),
            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color: Colors.greenAccent,
              child: Text("একটি ক্যাসেট প্লেয়ার হতে নিঃসৃত শব্দের ক্ষমতা 30mW হতে 60mW এ পরিবর্তিত হলে শব্দের তীব্রতা লেভেলের পরিবর্তন কত হবে?",style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true, ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){ Fluttertoast.showToast(
                              msg: "Correct!! Well Done!!",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,

                              backgroundColor: Colors.green,
                              textColor: Colors.black,
                              fontSize: 16.0);

                          },),
                        SizedBox(height:30,width:180,child:Text("3 dB", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("4 dB", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(height:30,width:180,child:Text("2 dB", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("0 dB", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){
                         
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => wave_Q_4()),);},),),
                  Divider(),

                  ListTile( title: Text("MOVE to NEXT TOPIC", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("Don't Give Up Already!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Heat1()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//Heat and Gas
class Heat1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Heat & Gas Lesson 1",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
                elevation: 20.0,
                color: Colors.greenAccent[100],
                child:Column(
                    children:<Widget>[
                      Divider(),
                      Text("আদর্শ গ্যাস ", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      Image.asset('assets/heat1.PNG'),
                    ])
            ),
            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Divider(color:Colors.black, thickness: 0.8,),
            Text("Written Question", style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,fontFamily:"Knewave" ,letterSpacing: 2.0,color:Colors.green)),
            Divider(color:Colors.black, thickness: 0.8,),
            Card(child:Column(
              children:<Widget>[ Text("স্থির তাপমাত্রায় কত চাপ প্রয়োগ করলে একটি গ্যাসের আয়তন এর স্বাভাবিক চাপ আয়তনের 4 গুন হবে? ", style:TextStyle(fontSize: 18,),softWrap: true,),
                Divider(color:Colors.black,thickness: 1.2,),
                HTMLtext( r"""$$ANSWER: 25.325 \times 10^3 Pa $$ """ ),
              ],)),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){
                        
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Heat_Q_1()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Heat2()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Heat2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom:50.0),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 2",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
                elevation: 20.0,
                color: Colors.greenAccent[100],
                child:Column(
                  children:<Widget>[
                    Divider(),
                    Text("গ্যাসের গতিতত্ত্ব থেকে পাই, ", style: TextStyle(color: Colors.black,fontSize: 16,),),
                    HTMLtext(

                        r""" $$   PV =\frac{1}{3}mn  \overline{c^2}
\\ Here ,\; m=একটি \;অণুর\;ভর
\\n= সিস্টেমে \;অণুর \;সংখ্যা
\\\therefore mn= গ্যাসীয়\; সিস্টেমের \;ভর

\\PV=\frac{2}{3}(\frac{1}{2}mn\overline{c^2})\\ \;
\\ \Rightarrow PV=\frac{2}{3}(গতিশক্তি, E) \\ \;
\\\fcolorbox{black}{white}{${\color{red}\Rightarrow E= \frac{3}{2} PV \\ \;
\\ \color{red} \Rightarrow E= \frac{3}{2}nRT
}$}
$$""",),
                    Text("কাজেই গড় গতিশক্তি,", style: TextStyle(color: Colors.black,fontSize: 16,),),
                    HTMLtext(
                        r""" $$ \\\; \\ \overline E = \frac{E}{N_A}=\frac{3}{2} \frac{R}{N_A}T\\\;
\\ \fcolorbox{green}{white}{${ \color{red}\overline E=\frac{3}{2}K_BT}$}\\\;
\\ এখানে, \; K_B=Boltzmann \; Constant
 $$""",

                    ),
                    Text("এখন যদি আমরা 1 mole গ্যাস বিবেচনা করি তাহলে mn=M (মোলার ভর)", style: TextStyle(color: Colors.black,fontSize:16,),),
                    HTMLtext(  r"""$$ \therefore RT=\frac{1}{3}M \overline{c^2}\\\;
\\ \Rightarrow  \overline{c^2}=\frac{3RT}{M}$$""",),
                    Text("কাজেই সংজ্ঞানুসারে মূল গড় বর্গবেগ ,", style: TextStyle(color: Colors.black,fontSize:16,),),
                    HTMLtext(  r"""$$ \\ \fcolorbox{green}{white}{${\color{red}C_{rms}=\sqrt{\overline{c^2}}=\sqrt{\frac{3RT}{M}}}$}$$""",),
                  ],)
            ),
            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color: Colors.greenAccent,
              child: Text(" 29 ডিগ্রি তাপমাত্রায় 1 mole হিলিয়াম গ্যাসের গতিশক্তি নির্ণয় কর",style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true, ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){ Fluttertoast.showToast(
                              msg: "Correct!! Well Done!!",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,

                              backgroundColor: Colors.green,
                              textColor: Colors.black,
                              fontSize: 16.0);

                          },),
                        SizedBox(height:30,width:180,child:Text("3742.2 J/mol", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("3800 J/mol", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(height:30,width:180,child:Text("4200.5 J/mol", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("2800.7 J/mol", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){
                        
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Heat_Q_2()),);},),),
                  Divider(),

                  ListTile( title: Text("GO to NEXT LESSON", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Heat3()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Heat3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 3",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
                elevation: 20.0,
                color: Colors.greenAccent[100],
                child:Column(
                  children:<Widget>[
                    Divider(),
                    Text("তাপমাত্রার বিভিন্ন স্কেলের মধ্যে রুপান্তর  ", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:FontWeight.bold),),
                    Card(child: HTMLtext(  r""" $$ \\ \; \\\frac{C}{5}= \frac{F-32}{9} = \frac{K-273}{5}=\frac{R}{4}\\ \; \\=\frac{R_n-492}{9} $$""",)),
                    Text("এখানে, C= সেলসিয়াসের তাপমাত্রা\nF= ফারেনহাইটের তাপমাত্রা\nK= কেলভিনের তাপমাত্রা\nR= রোমারের তাপমাত্রা\nRn = রাংকিনের তাপমাত্রা\nমুলতঃ সকল থার্মোমিটারের জন্য নিম্নের সম্পর্কটি প্রযোজ্য থাকেঃ", style: TextStyle(color: Colors.black,fontSize: 16,),),
                    Card(
                      child: HTMLtext(
                          r""" $$ \\\; \\\frac{X_\theta -X_{ice}}{X_{Steam}-X_{ice}}$$""",

                      ),
                    ),
                  ],)
            ),
            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Card(color: Colors.greenAccent,
              child: Text("এমন একটি তাপমাত্রা নির্ণয় কর যার মান সেন্টিগ্রেড এবং ফারেনহাইট স্কেলে এক হয়। ",style: TextStyle(color: Colors.black,fontSize: 16),softWrap: true, ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:280,
                    child:Row (
                      children: <Widget>[
                        RaisedButton(
                          child: Text("A",style:TextStyle(fontWeight: FontWeight.bold),),
                          onPressed:(){Fluttertoast.showToast(
                              msg: "Wrong!! Hey, Dont Give up",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,

                              backgroundColor: Colors.red,
                              textColor: Colors.black,
                              fontSize: 16.0);

                          },),
                        SizedBox(height:30,width:180,child:Text("40 degree", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                      ],),),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("B",style:TextStyle(fontWeight: FontWeight.bold),),
                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Wrong!! Hey, Dont Give up",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.red,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("0 degree", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("C",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){
                                Fluttertoast.showToast(
                                    msg: "Correct!! Well Done!!",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,

                                    backgroundColor: Colors.green,
                                    textColor: Colors.black,
                                    fontSize: 16.0);

                              },),
                            SizedBox(height:30,width:180,child:Text("-40 degree", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),
                          ]
                      )
                  ),
                  Divider(),

                  SizedBox(height: 50,width:280,
                      child:Row (
                          children: <Widget>[
                            RaisedButton(
                              child: Text("D",style:TextStyle(fontWeight: FontWeight.bold),),

                              onPressed:(){ Fluttertoast.showToast(
                                  msg: "Wrong!! Hey, Dont Give up",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,

                                  backgroundColor: Colors.red,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              },),
                            SizedBox(height:30,width:180,child:Text("-273 degree", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),),

                          ]
                      )
                  ),
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
                      onPressed:(){
                         
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Heat_Q_3()),);},),),
                  Divider(),

                  ListTile( title: Text("MOVE to NEXT TOPIC", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                    subtitle: Text("You Are Doing Great!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Heat4()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Heat4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(drawer:
      Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(children:<Widget>[Text('HSC PHYSICS 1st PAPER', style: TextStyle(fontFamily: 'Knewave',fontSize: 20),),Image.asset('assets/physics.png', height:103)],),

              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),

            ListTile(
              title: Text("TOPIC LIST", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Access All the Topics",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.view_list),
              //trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Physics1stPaperList()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("Let's Practice", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Solve Some Problems",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.assessment),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),
            ListTile(
              title: Text("ABOUT US", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                  fontWeight: FontWeight.bold,fontSize: 25),
              ),
              subtitle: Text("Let's Get Introduced",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.developer_board),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutUS()),);},
            ),
            Divider(color:Colors.green[400],thickness: 1.2,),

          ],
        ),
      ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("Lesson 4",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 20.0,
              color: Colors.white,
              child:Column(
                children:<Widget>[
                  Text("আর্দ্রতামিতি", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.black,thickness: 1.5,),
                  Text("শিশিরাংকঃ\n যে তাপমাত্রায় একটি নির্দিষ্ট আয়তনের বায়ু তার ভিতরের জলীয় বাষ্প দ্বারা সম্পৃক্ত হয় তাকে ঐ বায়ুর শিশিরাংক বলে।"
                      "\n \n শুষ্ক এবং সিক্ত বাল্ব হাইগ্রোমিটারঃ \nএই যন্ত্রে দুইটি থার্মোমিটার থাকে। এদের একটির বাল্ব সিক্ত এবং অন্যটির বাল্ব শুষ্ক। শুষ্ক বাল্ব থার্মোমিটার স্বাভাবিক ভাবেই বাতাসের তাপমাত্রা প্রদর্শন করবে। এই বাল্বদ্বয়ে প্রদর্শিত তাপমাত্রার ব্যবধান থেকে আমরা বায়ুর শিশিরাংক নির্ণয় করতে পারি।" ,
                    style: TextStyle(color: Colors.black,fontSize: 16,),),

                  HTMLtext(  r"""$$ \\\;
                    \\ \theta_1= \theta + G_{\theta 1}(\theta_1 - \theta_2)
                    \\\; \\ \theta_1= শুষ্ক \;বাল্বের/ \;বায়ুর \;তাপমাত্রা
                     \\\; \\ \theta_2= সিক্ত \;বাল্বের/ \;বায়ুর \;তাপমাত্রা
                      \\\; \\ \theta= শিশিরাংকের \;তাপমাত্রা
                      \\\; \\G_{\theta 1} = বায়ুর\;  তাপমাত্রায় \;গ্লেইসার\; উৎপাদক
                    $$""",),
                  Divider(color:Colors.blue,thickness: 1.5,),
                  Text("আপেক্ষিক আর্দ্রতা",style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Divider(color:Colors.blue,thickness: 1.5,),
                  HTMLtext(  r"""$$
                  \\Relative \; Humidity=\frac{f}{F} \times 100 \%
                   \\\;  \\f= \theta^o C\; তাপমাত্রায় \; (অর্থাৎ\; শিশিরাংকে) \;\\ সম্পৃক্ত \; জলীয় \;বাস্পচাপ
                   \\F= \theta_1^o C\; তাপমাত্রায় \; (অর্থাৎ\; বায়ুর \;তাপমাত্রায়) \;\\ সম্পৃক্ত \; জলীয়\; বাস্পচাপ
                  $$ """,),
                  Divider(),
                ],),),
            Icon(Icons.assignment,
                size: 240,
                color:Colors.greenAccent),
            Divider(color:Colors.black, thickness: 0.8,),
            Text("Written Question", style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,fontFamily:"Knewave" ,letterSpacing: 2.0,color:Colors.green)),
            Divider(color:Colors.black, thickness: 0.8,),
            Card(child:Column(
              children:<Widget>[ Text("কোন একদিনের শিশিরাংক 10 ডিগ্রি সেলসিয়াস এবং আপেক্ষিক আর্দ্রতা 67.3%। ঐ দিনে বায়ুর সম্পৃক্ত বাস্পচাপ কত? ", style:TextStyle(fontSize: 18,),softWrap: true,),
                HTMLtext(  r"""$$ 10^o \; C \; তাপমাত্রায় \; সম্পৃক্ত \; \\বাস্পচাপ \; =13.64 \times 10^{-4 } mHgP   $$ """,),
                Divider(color:Colors.black,thickness: 1.2,),
                HTMLtext( r"""$$ANSWER: 2.02 \times 10^{-4} mHgP $$ """ ),
              ],),),

            Card(
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(height: 50,width:400,
                    child: RaisedButton(
                      color:Colors.green.shade500,
                      child: Text("VIEW SOLUTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color:Colors.white),),
                      onPressed:(){

                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Heat_Q_4()));},),),
                  Divider(),

                  ListTile( title: Text("CONGRATULATIONS!!!", style:TextStyle(fontFamily:'Knewave',color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 20),
                  ),
                    subtitle: Text("GOOD TO GO FOR A TEST!!",style:TextStyle(color: Colors.red)),
                    leading: Image.asset('assets/Logo.png',height: 300,),
                    trailing: Icon(Icons.arrow_forward,size: 60.0,color: Colors.green),
                    onTap: (){

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Practice()),);
                    },
                  ),
                  Divider(),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
