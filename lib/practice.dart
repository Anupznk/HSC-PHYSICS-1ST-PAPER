import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hsc_physics/text_card.dart';
import 'chapter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'html_text_card.dart';

Color baseColor = Color(0xFF50CB88);

class Practice extends StatefulWidget {
  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  List<Chapter> questions = [
    Chapter(
        '1)	স্থির চাপে কোন তাপমাত্রায় কোনো গ্যাসের অনুর মূল গড় বর্গবেগ প্রমাণ চাপ ও তাপমত্রায় মূল গড় বর্গবেগের অর্ধেক হবে ?'),
    Chapter(
        '2) কোনো শব্দের তীব্রতা প্রমাণ তীব্রতার ১০০ গুণ হলে ঐ শব্দের তীব্রতার লেভেল কত dB ? '),
    Chapter(
        '3)	কোনো একটি সীমাবদ্ধ মাধ্যমে সৃষ্ট স্থির তরঙ্গের কম্পাংক 320Hz । তরঙ্গের পরপর দুটি নিস্পন্দ বিন্দুর মধ্যবর্তী দুরত্ব 50m । মাধ্যমে তরঙ্গের বেগ নির্ণয় কর। '),
    Chapter(
        '4)	একটি কণা সরল দোলগতি সম্পন্ন করছে। সাম্যাবস্থানে থেকে সরণ x=A/4 হলে কণার গতিশক্তি এবং স্থিতিশক্তির অনুপাত বের কর।'),
    Chapter(
        '5)	সরল ছন্দিত গতি সম্পন্নকারী কোনো কণার সর্বচ্চো বেগ 0.2m/s কণাটির বিস্তার 0.004m হলে কণাটির পর্যায়কাল কত ?'),
    Chapter(
        '6)	5mদৈর্ঘ্য এবং 1mm ব্যাসবিশিষ্ঠ তারে 25kg ভরের ফলে দৈর্ঘ্য 0.1mm প্রসারিত হলে তারটির সঞ্চিত শক্তির পরিমাণ নির্ণয় কর । '),
    Chapter(
        '7)	1m দীর্ঘ ও 2mm ব্যাসার্ধ এর একটি তারে 5Kg ভরের বস্তু ঝুলালে দৈর্ঘ্য বৃদ্ধি হয় 0.1mm । তারটির ব্যাসার্ধ এর পরিবর্তন কত হবে ? ? [পয়সনের অনুপাত 0.4]'),
    Chapter(
        '8)	পৃথিবী পৃষ্ঠের খুব নিকট দিয়ে এর চারদিকে বৃত্তাকার পথে ঘূর্ণনরত একটি কৃত্রিম উপগ্রহের ন্যূনতম বেগ নির্ণয় কর। ( g=9.8ms^(-2)এবং পৃথিবীর ব্যাসার্ধ 6440 km )'),
    Chapter(
        '9)	ভূপৃষ্ঠে কোনো লোকের ওজন 648N হলে তিনি চাঁদে গিয়ে কতটুকু ওজন হারাবেন ? পৃথিবীর ভর ও ব্যাসার্ধ যথাক্রমে চাঁদের ভর ও ব্যাসার্ধ এর 81গুণ ও  4গুণ '),
    Chapter(
        '10) যদি পৃথিবীর ভর চন্দ্রের ভরের 49 গুণ এবং তাদের মধ্যবর্তী দূরত্ব R=400000 km হয় তবে চন্দ্র ও পৃথিবীর সংযোগকারী রেখার কোথায় কোনো বস্তুর উপর উভয়ের টান সমান হবে ? '),
    Chapter(
        '11) 2kg ভরের একটি কাঠের টুকরো নগন্য ভরের একটি 0.1m লম্বা সুতায় ঝুলানো আছে । 10^(-2) kg ভরের একটি বুলেট আনুভুমিক বরাবর আঘাত করে টুকরোটি সর্বচ্চ উলম্ব সরণ 0.1m হলে আঘাত কালে বুলেটের বেগ কত ? '),
    Chapter('12) 0.1kg ভরের একটি বস্তুর ভরবেগ 0.02kgm/s। গতিশক্তি নির্ণয় কর '),
    Chapter(
        '13) 10 kg ভরের একটি কণার বেগ (7i +6j +5k) m/sহলে এর গতিশক্তি কত হবে ? '),
    Chapter(
        '14) 2kg ভরের একটি পাথরকে 12m লম্বা একটি সুতার সাহায্যে বৃত্তাকার পথে ঘুরানো হচ্ছে । সুতাটি সর্বাধিক 19.6N টান সহ্য করতে পারে । সুতা না ছিঁড়ে পাথরটিকে সর্বাধিক কত সমদ্রুতি তে ঘোরানো যেতে পারে ?'),
    Chapter(
        '15) 4kg ভরের একটি হাঁসপাখি একটী গাছের ডালে বসে আছে । পাখিটিকে 20g ভরের একটি বুলেট 200m/s বেগে আনুভূমিক ভাবে আঘাত করল । বুলেটটি পাখির মধ্যে রয়ে গেলে পাখিটির আনুভুমিক বেগ কত হবে ? '),
    Chapter(
        '16) একটি দালানের ছাদ থেকে একটি বল আনুভূমিকভাবে 50m/sদ্রুতিতে নিক্ষেপ করা হলো । বাতাসের বাধা না থাকলে 3s পর দ্রুতি কত হবে ?'),
    Chapter(
        '17) দুটি ভেক্টর রাশির বৃহত্তর লব্ধি 28 একক এবং ক্ষুদ্রতর লব্ধি 4 একক । রাশি দুটি পরস্পরের সাথে সমকোণে ক্রিয়ারত। এদের লব্ধির মান কত ?'),
    Chapter(
        '18) একটি গ্রামোফোন রেকর্ড সমকৌণিক বেগে ঘুরছে । রেকর্ডের উপর কেন্দ্র হতে 0.12m এবং 0.18m দূরত্বে বিন্দুতে রৈখিক বেগের অনুপাত বের কর ।'),
    Chapter(
        '19) একটি রকেট তার উড্ডয়নের প্রথম সেকেন্ডে তার ভরের 1/60 ভাগ হারায় । রকেট হতে গ্যাস 2400 m/s বেগে বের করে দেয় । রকেটটির ত্বরণ কত হবে ?'),
    Chapter(
        '20) 2kg ভরের একটি চলন্ত বস্তুর ওপর 4s ধরে10N বল প্রয়োগ করা হলে বস্তুটি 100m পথ অতিক্রম করে । বস্তুটির আদি বেগ কত ছিল ?'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F4F8),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: baseColor,
        title: Text("Practice Test",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: questions
                  .map((question) => TextCard(
                        chapter: question,
                      ))
                  .toList(),
            ),
            SizedBox(
              height: 16,
            ),
            FlatButton.icon(
                color: baseColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => practiceProblemSolution()),
                  );

                  // todo: add route
                },
                icon: Icon(
                  Icons.check_circle,
                  size: 30,
                  color: Colors.white,
                ),
                label: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'View Solutions',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Column(
                      children: [
                        Text(
                            "Please keep an eye on our Instagram page.We will enrich this section in the next update soon. "
                            "We are going to publish more study apps. Stay connected!",
                            style: TextStyle(
                              fontSize: 18,
                            )),
                        SizedBox(
                          height: 24,
                        ),
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
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}

class practiceProblemSolution extends StatefulWidget {
  const practiceProblemSolution({Key? key}) : super(key: key);

  @override
  _practiceProblemSolutionState createState() =>
      _practiceProblemSolutionState();
}

class _practiceProblemSolutionState extends State<practiceProblemSolution> {
  List<Chapter> solutions = [
    Chapter(
        r"""$$
        1. \ T_1= 273K\;
        T_2= ?
      
        \\প্রশ্নমতে , \;C_2=\frac{C_1}{2}
        \\or , C_1=2C_2
        \\আমরা\; জানি, \;C_1=\sqrt{\frac{3RT_1}{M}}(1)
        \\আবার,\; C_2= \sqrt{\frac{3RT_2}{M}}(2)\\(2)/(1)\Rightarrow \; \frac{C_1}{C_2}=\sqrt{\frac{T_2}{T_1}}
        \\ \frac{C_2}{{2C}_2}=\sqrt{\frac{T_2}{T_1}}
        \\0.5=\sqrt{\frac{T_2}{T_1}}, \\or\; 0.25= \frac{T_2}{T_1}
        \\or,\; T_2=0.25\times 273=68.25K  
        
        $$"""
    ),
    Chapter(
        r"""$$
        2. \ I= 100I_0
        \\তীব্রতার \;লেভেল \; \beta=10 log I/I_0\  \\dB=10 log \frac{{100I}_0}{I_0}dB=10 log100 dB 
        \\= 20 dB.   
        $$"""
    ),

    Chapter(
        r"""$$ 
            \\\;
3. \ \frac{\lambda}{2}= 50m 
\\or ,\; λ = 100m
\\এখানে,\; তরঙ্গের \;কম্পাংক \;n=320Hz

\\V=?
\\v=nλ
\\\Rightarrow V=32000m/s 


$$"""
    ),
    Chapter(
        r"""$$
        4. \ আমরা\; জানি, E_k=\frac{1}{2}{KA}^2-\frac{1}{2}{KX}^2
\\=\frac{1}{2}{KA}^2-\frac{1}{2}{K(\frac{A}{4}\ )}^2
\\E_k=\frac{1}{2}K\frac{{15A}^2}{16}
\\\;\\স্থিতিশক্তি,E_p= \frac{1}{2}{KX}^2 ; \\এখানে , x=\frac{A}{4}
\\=\frac{1}{2}{K(\frac{A}{4}\ )}^2
\\=\frac{1}{2}K\frac{A^2}{16}
\\\;\\গতিশক্তি\; এবং\; স্থিতিশক্তির \;অনুপাত\\= \frac{\frac{1}{2}K\frac{{15A}^2}{16}}{\frac{1}{2}K\frac{A^2}{16}}= 15 
\\গতিশক্তি : স্থিতিশক্তি = 15:1
        $$"""
    ),

    Chapter(
        r"""$$
        5. \ এখানে\; বিস্তার A=0.004m
\\কণার\; সর্বচ্চো \;বেগ V=0.02m/s

\\V=A\ \omega
\\or, V=A\frac{2\pi}{T}
\\or, T=\frac{A2\pi}{V}-= 1.256s.
        $$"""
    ),

    Chapter(
        r"""$$
        6. \ মোট \;আয়তনে\; সঞ্চিত \;শক্তি,\\ =\frac{1}{2}\times পীড়ন \times বিকৃতি \times আয়তন 
\\=\frac{1}{2}\frac{25\times9.8}{\pi{(\frac{{1\times10}^3}{2})}^2}*\\\frac{{0.1\times10}^{-3}}{5}*\pi*{(\frac{{1\times10}^3}{2})}^2\times5
\\=0.01225J. jhamela ase thik kora lagbe

\\\;$$ """

    ),

    Chapter(
        r"""$$
        7. \ এখানে ,\; তারের \;দৈর্ঘ্য, L=1m 
\\ r=2mm={2\times 10}^{-3}m
\\m=5Kg
\\l=0.1mm={1\times 10}^{-3}m
\\D={4\times 10}^{-3}m
\\\sigma=0.4
\\\sigma=\frac{\frac{d}{D}}{\frac{l}{L}}
\\d={1.6\times 10}^{-7}
\\r= {8\times 10}^{-8}m
        $$"""
    ),

    Chapter(
        r"""$$
        8. \ v = \sqrt{gR}= \sqrt{9.8\times6.4\times{10}^6}\\={7.92Kms}^{-1}
        $$"""
    ),

    Chapter(
        r"""$$
        9. \ M_m=\frac{M_e}{81}  \\ R_m=\frac{R_e}{4}\\\;
\\ g=\frac{GM}{R^2}\;
\&\; g_m=\frac{GM_m}{{R_m}^2}......(1)
\\ g_e=\frac{GM_e}{{R_e}^2}......(2)
\\(1) / (2) \Rightarrow
\\\frac{g_m}{g_e}=\frac{\frac{GM_m}{{R_m}^2}}{\frac{GM_e}{{R_e}^2}}=\frac{16}{81}
\\ \frac{W_m}{W_e}=\frac{mg_m}{mg_e}=\frac{16}{81}
\\ \Rightarrow \; W_m=\frac{16}{81} \times 648 = 128
\\ Lost \; Weight=648-128=520N
        $$"""
    ),
    Chapter(
        r"""$$
        10. \  \frac{GM_e}{x^2}=\frac{GM_m}{{(R-x)}^2}\\(x =পৃথিবী \;হতে \;দূরত্ব )
\\ \frac{49}{x^2}=\frac{1}{{(R-x)}^2}
\\ \frac{x}{R-x}=7\\\;
\\x=\frac{7}{8}R\\={3.5\times 10}^5km
        $$"""
    ),
    Chapter(
        r"""$$
        
        $$"""
    ),
    Chapter(
        r"""$$
        
        $$"""
    ),
    Chapter(
        r"""$$
        
        $$"""
    ),
    Chapter(
        r"""$$
        
        $$"""
    ),
    Chapter(
        r"""$$
        
        $$"""
    ),
    Chapter(
        r"""$$
        
        $$"""
    ),




  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F4F8),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: baseColor,
        title: Text("Solve",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Text(
              'Solution to Practice Problems',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
            Column(
              children: solutions
                  .map((question) => HTMLTextCard(
                        chapter: question,
                      ))
                  .toList(),
            ),
            SizedBox(
              height: 16,
            ),
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
