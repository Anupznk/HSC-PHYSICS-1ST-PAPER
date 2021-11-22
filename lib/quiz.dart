import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';

import 'main.dart';

//vector
class vector_Q_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:Column( children: <Widget>[Divider(),
       Image.asset('assets/vector1Q.png'),
       Text("চিত্র হতে, পিথাগোরাসের উপপাদ্য অনুযায়ী আমরা পাই,",style: TextStyle(fontSize: 16),),

        HTMLtext(r"""$$ s=\sqrt{( \pi r)^2+(2r)^2}
        \\s=\sqrt{( \pi \times 0.4)^2+(2 \times 0.4)^2}
        \\s\approx 1.49m
        $$""")
      ]
      ),
    );
  }
}
class vector_Q_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:Column(children:<Widget>[
      Image.asset('assets/vector6.png'),


        TeXView(
          renderingEngine: TeXViewRenderingEngine.katex(),
          loadingWidgetBuilder: (context) => Center(
            child: Column(
              children: <Widget>[
                CircularProgressIndicator(color: baseColor,),

              ],
            ),
          ),
          child: TeXViewColumn(children: [
            TeXViewDocument(r"""$$ ত্রিভুজ\; সূত্র \;থেকে \;পাই,
        \\ \overrightarrow{OA}+ \overrightarrow{AB}=\overrightarrow{OB}
        \\ \Rightarrow \overrightarrow{AB}=\overrightarrow{OB}-\overrightarrow{OA}
        \\ \Rightarrow \overrightarrow{AB}=(1-2),(2-3),(7-5)
        \\ \Rightarrow \overrightarrow{AB}=(-1,-2,2)
        \\ And \; \mid \overrightarrow{AB} \mid= \sqrt{(-1)^2+(-2)^2+(2)^2}
        \\=3 \; units
        
        $$""",
                style: TeXViewStyle(
                  textAlign: TeXViewTextAlign.Left,
                  sizeUnit: TeXViewSizeUnit.Percent,
                  contentColor: Colors.black,
                )),
          ]),
        )
      ],
      ),
    );
  }
}
class vector_Q_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:

        TeXView(
          renderingEngine: TeXViewRenderingEngine.katex(),
          loadingWidgetBuilder: (context) => Center(
            child: Column(
              children: <Widget>[
                CircularProgressIndicator(color: baseColor,),

              ],
            ),
          ),
          child: TeXViewColumn(children: [
            TeXViewDocument(r"""$$ R = \sqrt{A^2 +A^2 +2A.A \cos \delta}
        \\ =\sqrt{2A^2 +2A^2\cos \delta}
        \\=\sqrt{2}A \sqrt{2 \cos^2 \frac{\delta}{2}}
        \\(As \; 1+\cos A = 2\cos^2 \frac{A}{2})
        \\= \sqrt{2} A \sqrt{2} \cos \frac{\delta}{2}
        \\ =2A \cos \frac{\delta}{2}
        $$""",
                style: TeXViewStyle(
                  textAlign: TeXViewTextAlign.Left,
                  sizeUnit: TeXViewSizeUnit.Percent,
                  contentColor: Colors.black,
                )),
          ]),
        )
    );
  }
}
class vector_Q_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:Column(children:<Widget>[
      Image.asset('assets/truck.png',height:280),

        TeXView(
          renderingEngine: TeXViewRenderingEngine.katex(),
          loadingWidgetBuilder: (context) => Center(
            child: Column(
              children: <Widget>[
                CircularProgressIndicator(color: baseColor,),

              ],
            ),
          ),
          child: TeXViewColumn(children: [
            TeXViewDocument(r"""$$ ত্রিভুজ \; সূত্র \; অনুসারে,
        \\\overrightarrow{v_T}=\overrightarrow{v_{TC}}+\overrightarrow{v_C}
        \\ \Rightarrow \mid \overrightarrow{v_T}\mid=\sqrt{v_{TC}^2+v_C^2}
        \\ \Rightarrow \mid \overrightarrow{v_T}\mid =80 \;kmh^{-1}
        \\ \;
        \\ \tan \theta = \frac{v_C}{v_{TC}}
        \\ \Rightarrow \tan \theta = \frac{1}{\sqrt{3}}
        \\ \Rightarrow \theta = 30^o
        $$""",
                style: TeXViewStyle(
                  textAlign: TeXViewTextAlign.Left,
                  sizeUnit: TeXViewSizeUnit.Percent,
                  contentColor: Colors.black,
                )),
          ]),
        )
      ],
      )
    );
  }
}
class vector_Q_5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:50),
      child: Scaffold(
          backgroundColor: Colors.greenAccent[100],
          appBar: AppBar(
            backgroundColor:Colors.green[400],
            title: Text("SOLVE",
                style: TextStyle(fontFamily: "Knewave",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,letterSpacing: 1)),
            centerTitle: true,

          ),
          body:Column(children:<Widget>[
            Image.asset('assets/resolution2.png',height:280),
            TeXView(
              renderingEngine: TeXViewRenderingEngine.katex(),
              loadingWidgetBuilder: (context) => Center(
                child: Column(
                  children: <Widget>[
                    CircularProgressIndicator(color: baseColor,),

                  ],
                ),
              ),
              child: TeXViewColumn(children: [
                TeXViewDocument(r"""$$ আমরা \; জানি, \\ P=\frac{R \sin \beta}{\sin (\alpha + \beta)}
              \\ Here, \\ F=\frac{F \sin \beta}{\sin (90+ \beta)}
              \\ \Rightarrow \frac{\sin \beta}{\cos \beta}= \tan \beta =1
              \\ \Rightarrow \beta =45^o
              \\ Therefore, Q = \frac{F \sin \alpha}{\sin (\alpha + \beta)}
              \\ = \frac{F \sin 90}{\sin (90+45)}
              \\=\frac{F}{\cos 45}\\\;
              \\ =\sqrt{2}F
          $$""",
                    style: TeXViewStyle(
                      textAlign: TeXViewTextAlign.Left,
                      sizeUnit: TeXViewSizeUnit.Percent,
                      contentColor: Colors.black,
                    )),
              ]),
            )

          ],
          )
      ),
    );
  }
}
class vector_Q_6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:

        TeXView(
          renderingEngine: TeXViewRenderingEngine.katex(),
          loadingWidgetBuilder: (context) => Center(
            child: Column(
              children: <Widget>[
                CircularProgressIndicator(color: baseColor,),

              ],
            ),
          ),
          child: TeXViewColumn(children: [
            TeXViewDocument(r"""$$ \\v+u = 18
\\v-u =6
\\Solving \; u= 6 \;\& \; v=12
\\Therefore \; \alpha =  \cos^{-1}(\frac{-6}{12})=120\; degree

        $$""",
                style: TeXViewStyle(
                  textAlign: TeXViewTextAlign.Left,
                  sizeUnit: TeXViewSizeUnit.Percent,
                  contentColor: Colors.black,
                )),
          ]),
        )
    );
  }
}
class vector_Q_7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:

        TeXView(
          renderingEngine: TeXViewRenderingEngine.katex(),
          loadingWidgetBuilder: (context) => Center(
            child: Column(
              children: <Widget>[
                CircularProgressIndicator(color: baseColor,),

              ],
            ),
          ),
          child: TeXViewColumn(children: [
            TeXViewDocument(r"""$$ \overrightarrow{A} . \widehat{i}=2=A \times 1 \times \cos \theta_X
        \\ \Rightarrow \theta_X=\cos^{-1} \frac{2}{A} .... (1)
        \\Here, \; A= \sqrt{2^2+2^2+(2\sqrt{2})^2}
        \\So \; from \; (1), \; \theta _X= 60^o
        $$""",
                style: TeXViewStyle(
                  textAlign: TeXViewTextAlign.Left,
                  sizeUnit: TeXViewSizeUnit.Percent,
                  contentColor: Colors.black,
                )),
          ]),
        )
    );
  }
}
class vector_Q_8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:Card(child:Image.asset('assets/crossQ.png',width: 420,)));
  }
}
class vector_Q_9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:Image.asset('assets/vcq.PNG'),
    );
  }
}








// graph
class Graph_Q_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
        TeXView(
          renderingEngine: TeXViewRenderingEngine.katex(),
          loadingWidgetBuilder: (context) => Center(
            child: Column(
              children: <Widget>[
                CircularProgressIndicator(color: baseColor,),

              ],
            ),
          ),
          child: TeXViewColumn(children: [
            TeXViewDocument(r"""$$ s=\frac{1}{2} \times ভূমি \times উচ্চতা
        \\=\frac{1}{2}\times 8 \times 10
        \\=40m$$""",
                style: TeXViewStyle(
                  textAlign: TeXViewTextAlign.Left,
                  sizeUnit: TeXViewSizeUnit.Percent,
                  contentColor: Colors.black,
                )),
          ]),
        )
    );
  }
}
//
//Motion
class Motion_Q_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:

        TeXView(
          renderingEngine: TeXViewRenderingEngine.katex(),
          loadingWidgetBuilder: (context) => Center(
            child: Column(
              children: <Widget>[
                CircularProgressIndicator(color: baseColor,),

              ],
            ),
          ),
          child: TeXViewColumn(children: [
            TeXViewDocument(r"""$$ T=\frac{2u}{g}
                \\ \Rightarrow T=\frac{2 \times 9.2}{9.8}
                \\ \Rightarrow T=1.878s $$""",
                style: TeXViewStyle(
                  textAlign: TeXViewTextAlign.Left,
                  sizeUnit: TeXViewSizeUnit.Percent,
                  contentColor: Colors.black,
                )),
          ]),
        )
    );
  }
}
class Motion_Q_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
        TeXView(
          renderingEngine: TeXViewRenderingEngine.katex(),
          loadingWidgetBuilder: (context) => Center(
            child: Column(
              children: <Widget>[
                CircularProgressIndicator(color: baseColor,),

              ],
            ),
          ),
          child: TeXViewColumn(children: [
            TeXViewDocument(r"""$$ Here
\\v_x = t^2
\\\Rightarrow a_x= \frac{\mathrm{d}}{\mathrm{d}t}  (v_x) =2t
\\ \& \;v_y=3t \\ \Rightarrow  a_y=\frac{\mathrm{d}}{\mathrm{d}t}(v_y)=3
\\ \overrightarrow{a}=2t \widehat{i}+3 \widehat{j}
$$""",
                style: TeXViewStyle(
                  textAlign: TeXViewTextAlign.Left,
                  sizeUnit: TeXViewSizeUnit.Percent,
                  contentColor: Colors.black,
                )),
          ]),
        )
    );
  }
}
class Motion_Q_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
        TeXView(
          renderingEngine: TeXViewRenderingEngine.katex(),
          loadingWidgetBuilder: (context) => Center(
            child: Column(
              children: <Widget>[
                CircularProgressIndicator(color: baseColor,),

              ],
            ),
          ),
          child: TeXViewColumn(children: [
            TeXViewDocument(r"""$$ Here
\\v_x=30 \cos30=25.98ms^{-1} \\v_y =usin \theta - gt =5.2 ms^{-1}
\\v=\sqrt{v_x^2+v_y^2}=26.5 ms^{-1}
$$""",
                style: TeXViewStyle(
                  textAlign: TeXViewTextAlign.Left,
                  sizeUnit: TeXViewSizeUnit.Percent,
                  contentColor: Colors.black,
                )),
          ]),
        )
    );
  }
}
class Motion_Q_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:

        TeXView(
          renderingEngine: TeXViewRenderingEngine.katex(),
          loadingWidgetBuilder: (context) => Center(
            child: Column(
              children: <Widget>[
                CircularProgressIndicator(color: baseColor,),

              ],
            ),
          ),
          child: TeXViewColumn(children: [
            TeXViewDocument(r"""$$ According\; to \;the \; question\\R=H \\ \Rightarrow\frac{R}{H}=1
      \\=\frac{2u^2sin \theta_0 cos\theta_0}{g} \times \frac{2g}{u^2 \sin^2 \theta_0}
      \\ \Rightarrow tan \theta_0 = 4
      \\ \theta_0=76^o$$""",
                style: TeXViewStyle(
                  textAlign: TeXViewTextAlign.Left,
                  sizeUnit: TeXViewSizeUnit.Percent,
                  contentColor: Colors.black,
                )),
          ]),
        )
    );
  }
}
class Motion_Q_5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:

        TeXView(
          renderingEngine: TeXViewRenderingEngine.katex(),
          loadingWidgetBuilder: (context) => Center(
            child: Column(
              children: <Widget>[
                CircularProgressIndicator(color: baseColor,),

              ],
            ),
          ),
          child: TeXViewColumn(children: [
            TeXViewDocument(r"""$$ y= \frac{1}{2}gt^2 \\\Rightarrow t= \sqrt{\frac{2y}{g}}=4.84s \\ Now, \; x=ut \\\Rightarrow u=\frac{x}{t}=1086.7m $$""",
                style: TeXViewStyle(
                  textAlign: TeXViewTextAlign.Left,
                  sizeUnit: TeXViewSizeUnit.Percent,
                  contentColor: Colors.black,
                )),
          ]),
        )
    );
  }
}
//Laws of motion
class LM_Q_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:

        TeXView(
          renderingEngine: TeXViewRenderingEngine.katex(),
          loadingWidgetBuilder: (context) => Center(
            child: Column(
              children: <Widget>[
                CircularProgressIndicator(color: baseColor,),

              ],
            ),
          ),
          child: TeXViewColumn(children: [
            TeXViewDocument(r"""$$ \sum F= ma
\\ \sum F =\sqrt{7^2 +5^2 +2 \times 7 \times 5}=10.44 N
\\ a = \frac{\sum F}{2.33}
\\=4.48 ms^{-2} $$""",
                style: TeXViewStyle(
                  textAlign: TeXViewTextAlign.Left,
                  sizeUnit: TeXViewSizeUnit.Percent,
                  contentColor: Colors.black,
                )),
          ]),
        )
    );
  }
}
class LM_Q_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:

        TeXView(
          renderingEngine: TeXViewRenderingEngine.katex(),
          loadingWidgetBuilder: (context) => Center(
            child: Column(
              children: <Widget>[
                CircularProgressIndicator(color: baseColor,),

              ],
            ),
          ),
          child: TeXViewColumn(children: [
            TeXViewDocument(r"""$$ Given, \frac{dm}{dt}=0.07kg \\v_r=100kms^{-1}=1 \times 10^5 ms^{-1}\\ \Rightarrow F_r=v_r \frac{dm}{dt} \\=7 \times 10^3 N$$""",
                style: TeXViewStyle(
                  textAlign: TeXViewTextAlign.Left,
                  sizeUnit: TeXViewSizeUnit.Percent,
                  contentColor: Colors.black,
                )),
          ]),
        )
    );
  }
}
class LM_Q_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent[100],
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("SOLVE",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,

        ),
        body:Card(
          child:Column(children:<Widget>[
          Text("শুরুতে পুরো সিস্টেমের মোট ভরবেগ শূন্য ছিল। কাজেই, ",style: TextStyle(fontSize: 16),),


            TeXView(
              renderingEngine: TeXViewRenderingEngine.katex(),
              loadingWidgetBuilder: (context) => Center(
                child: Column(
                  children: <Widget>[
                    CircularProgressIndicator(color: baseColor,),

                  ],
                ),
              ),
              child: TeXViewColumn(children: [
                TeXViewDocument(r"""$$ m_{boat}v_{boat}=-(m_1v_1+m_2v_2)
            \\=-(40 \times 4 + 70 \times (-4))
            \\(As \; they \; dived \; in \; two \; opposite \; directions)
            \\v_{boat} = \frac{120}{200}
            \\=0.6 ms^{-1} $$""",
                    style: TeXViewStyle(
                      textAlign: TeXViewTextAlign.Left,
                      sizeUnit: TeXViewSizeUnit.Percent,
                      contentColor: Colors.black,
                    )),
              ]),
            ),

            Text("ধনাত্মক দ্বারা বুঝা যায় প্রথম ব্যক্তি যেদিকে ঝাঁপ দেন নৌকা সেইদিকে যাবে ",style: TextStyle(fontSize: 16),
            ),],),
        ),
    );
  }
}
class LM_Q_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
        TeXView(
          renderingEngine: TeXViewRenderingEngine.katex(),
          loadingWidgetBuilder: (context) => Center(
            child: Column(
              children: <Widget>[
                CircularProgressIndicator(color: baseColor,),

              ],
            ),
          ),
          child: TeXViewColumn(children: [
            TeXViewDocument(r"""$$ J=-m(u+v) \\ =-200(20+1.3)\\=-4260 kgms^{-1} $$""",
                style: TeXViewStyle(
                  textAlign: TeXViewTextAlign.Left,
                  sizeUnit: TeXViewSizeUnit.Percent,
                  contentColor: Colors.black,
                )),
          ]),
        )
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

// //Lawsofangularmotion
class LAM_Q_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
      HTMLtext(r"""$$  \frac{1}{2}Mr^2
\\ \frac{1}{2} (\pi r^2 \times mass \;of\; unit\; area ) r^2
\\ \frac {1}{2} \pi (0.3)^4 \times 0.1
\\ = 1.27 \times 10^{-3} kgm^2
$$""",),
    );
  }
}
class LAM_Q_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
      HTMLtext(r"""$$  L=I\omega
\\L=(mr^2)(2\pi f)
\\=1.36 \;kgm^2s^-1$$""",),
    );
  }
}
class LAM_Q_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
      HTMLtext(r"""$$ \theta = 90^o-60^o=30^o \\ r =\frac{100}{2}m=50 m
        \\We \; Know\; \tan \theta = \frac{v^2}{rg} \\ \Rightarrow v= \sqrt{rg \tan \theta}
        \\ = \sqrt{50 \times 9.8 \times \tan 30}
        \\=16.82 ms{-1}
        $$""",),
    );
  }
}
// //WPE
class WPE_Q_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body: Card(child:Text("দেওয়া আছে , \nমার্কারটির ভর , m = 100 g = 0.1 kg\nএখানে \n "
    "মার্কারটির ভরকেন্দ্রের আদি উচ্চতা = 2/2 cm = 1 cm = 0.01 mএবং পরবর্তী উচ্চতা = 5/2 cm = 2.5 cm = 0.025 m\nঅতএব,\n "
    "মার্কারটির ভরকেন্দ্রের অতিক্রান্ত দূরত্ব \n= ( 0.025 – 0.01) m = 0.015 m\n সুতরাং, মাটি কে খাড়াভাবে রাখতে কৃতকাজ ,"
    " \nW = mgh = (0.1×9.8×0.015) J \n= 0.0147 J",style: TextStyle(fontSize: 16),softWrap: true,),));
  }
}
class WPE_Q_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
      HTMLtext(
        r"""$$ h= \sqrt[3]{125} =5 m
\\ \therefore W= mgh \frac{n(n-1)}{2}
\\ = 5 \times 9.8 \times 5 \times \frac{10(10-1)}{2} J
\\ =11025 \;J
        $$""",),
    );
  }
}
class WPE_Q_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
      HTMLtext(
        r"""$$ Here \\ L=10m \\ r = \frac{6}{2}= 3m \\t =(30 \times 60)s
        \\h_1=0, h_2=10
        \\ m_{water}= \rho_w \times \pi r^2 L
        \\ P= \frac{W}{t}\\=\frac{m_{water}g \frac{h_2+h_1}{2}}{t}
        \\=7.696 KW
        $$""",),
    );
  }
}
class WPE_Q_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
      HTMLtext(r"""$$ \\ \; \\h=2l \sin^2 \frac{\alpha}{2}
          \\ \Rightarrow h= 2 \times 1 \sin^215^o
          \\ \Rightarrow h= 0.13
          \\ \therefore v =\sqrt{2gh}
          \\ =1.62 ms{-1}
          $$""",),

    );
  }
}

// //gravity
class Gravity_Q_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:Column(children: [Image.asset('assets/gravitation3.png'),
        HTMLtext(
        r"""$$ L= \pi R
\\ dM =(\frac{M}{L})R d\theta
\\ \therefore dF= \frac{GdMm}{R^2}
\\ = \frac{GMm d\theta}{LR}
\\ F= \intop\nolimits_{0}^{\frac{\pi}{2}} 2 dF \sin \theta
\\ \Rightarrow F =\frac{2GMm}{LR}
\\ \fcolorbox{red}{white}{${\color{black} F=\frac{2 \pi GMm}{R^2}}$}
        $$""",),],),
    );
  }
}
class Gravity_Q_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:Column(children: [Image.asset('assets/gravitation2.png'),
        HTMLtext(
          r"""$$ @ P_1: E_{P1}=\frac{GM}{(a+4a-a)^2}
          \\ = \frac{GM}{16a^2}
          \\@ P_2: E_{p2}=\frac{GM}{(4a+a)^2} +\frac{GM}{(a+4a+a)^2}
          \\=\frac{61}{900}\frac{GM}{a^2}
        $$""",),],),
    );
  }
}
class Gravity_Q_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body: Column(children: <Widget>[
        Text("যেহেতু এখানে গতিশক্তি দ্বারা মহাকর্ষ ক্ষেত্রে কৃতকাজ সম্পন্ন হয়েছে",style: TextStyle(fontSize: 20),softWrap: true,),
        HTMLtext(
          r"""$$ \frac{1}{2} mv^2 = GMm(\frac{1}{r}-\frac{1}{r+h})
          \\ Here, v =5 \times 10^3 ms^{-1}
          \\M= পৃথিবীর\; ভর=6 \times 10^{24}kg
          \\মান \;বসিয়ে \;পাই, \; h= 1.6 \times 10^6 m
        $$""",),])
    );
  }
}
class Gravity_Q_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent[100],
        appBar: AppBar(
          backgroundColor:Colors.green[400],
          title: Text("SOLVE",
              style: TextStyle(fontFamily: "Knewave",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,letterSpacing: 1)),
          centerTitle: true,

        ),
        body:

        HTMLtext(
            r"""$$ v_e = \sqrt{\frac{2GM}{R}}
            \\R \; and\; M\; depend \; upon \; each \; other
            \\ M=V \times \rho
            \\ = \frac{4}{3} \pi R^3 \rho
            \\v_e = \sqrt{\frac{8\pi G \rho}{3}R^2}
            \\ v_e= \sqrt{\frac{8 \pi G \rho}{3}} \times R
            \\ \therefore v_e \propto R
        $$""",),
    );
  }
}
class Gravity_Q_5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:

      HTMLtext(
        r"""$$ Here \; T=24 \times 3600 s
        \\R=6440 km
        \\ M= 6 \times 10^{24}kg
        \\ \therefore h= \sqrt[3]{\frac{T^2 GM}{4 \pi ^2}}-R
        \\ h=35935 km
        $$""",),
    );
  }
}
class Gravity_Q_6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:

      HTMLtext(
        r"""$$ ওজনহীন\; হলে\; নিরক্ষীয় \;অঞ্চলে
        \\ mg_\lambda =0
        \\ \Rightarrow g_\lambda = 0
        \\ \Rightarrow g_e - \omega^2R=0
        \\ \Rightarrow \omega = \sqrt{\frac{g_e}{R}} .......( 1)
        \\ বর্তমান \; কৌণিক \; বেগ \;\omega_0 = \frac{2\pi}{T}..... (2)
        \\ এখানে \; T=24 \times 3600 s
        \\ 1 \; কে \; দুই \; দ্বারা \; ভাগ \; করে \; পাই
        \\ \frac{\omega}{\omega_0} \approx 17
        \\ অর্থাৎ \; বর্তমানের \; 17 \; গুন
         $$""",),
    );
  }
}

// //Elasticity
class Elasticity_Q_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
      HTMLtext(
         r"""$$ \\ \; \\ Stress=\frac{F}{A}\\=\frac{10\times 9.8}{10^{-6}}\\=98\times 10^6Nm{-2}
$$""",),
    );
  }
}
class Elasticity_Q_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
      HTMLtext(
         r"""$$  F = YA\times \frac{l}{L}
\\=2 \times 10^{11}  \times 10^{-6} \times \frac{5}{100}
\\=10000 N
$$""",),
    );
  }
}
class Elasticity_Q_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
      HTMLtext(
         r"""$$ Energy\;Density = \frac{1}{2} \times Stress \times Strain
\\=\frac{1}{2}\times Stress \times \frac{Stress}{Y}
\\=19.208 Jm^{-3}
$$""",),
    );
  }
}


// //fluid
class Fluid_Q_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
     body:
     HTMLtext(

           r""" $$
    \\T=\frac{F}{L}
    \\=\frac{F}{2l}
    \\=\frac{7.28\times 10^{-3}}{2\times 0.05}
    = 0.0728 N.m^{-1}
        $$ """,



     ),
    );
  }
}
class fluid_Q_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:Column(
        children:<Widget>[
          HTMLtext(
          r""" $$ Here\; \Delta A = 4 \pi r^2 - 0$$ """,

      ),
        Text(" because the bubble is being formed here not sprayed. Therefore no initial surface area"),
          HTMLtext(
              r""" $$ Hence\; W = 2 \times \Delta A\times T \\=8\pi r^2T $$ """,

          ),

        ]
    ),
    );
  }
}
class Fluid_Q_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
      HTMLtext(

          r""" $$
    \\F= \eta A \frac{\delta v}{\delta y}\;
এখানে, \eta = 1.55
\\\delta v= 0.05
\\\delta y=2 \times 10^{-3}
\\A= 10 \times 10^{-3} m^2
\;বসিয়ে পাই, F = 0.3875 N

        $$ """,

      ),
    );
  }
}
class Fluid_Q_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
      HTMLtext(

          r""" $$From \; the \; formula \; we \; can \; write \\r= \sqrt{\frac{9\eta v_t }{2(\rho_{solid}-\rho_{liquid})g}}\\assuming\; \rho_{liquid} = 10^3 kgm^{-3}
\\ we \; get, \; d=2r=1.99 \times 10^{-5} m $$ """,

      ),
    );
  }
}
class Fluid_Q_5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
      HTMLtext(

          r""" $$\\ \;\\h=\frac{2T}{r \rho g}\\=\frac{2 \times 72\times 10^{-3} }{\frac{0.2\times 10^{-3}}{2} \times 10^{3} \times 9.8}\\=0.1469 m$$ """,

      ),
    );
  }
}
//shm
class shm_Q_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
      HTMLtext(

         r"""$$ Setting\; t=0s,
\\y_{t=0}= Initial \; Displacement \\ = 0.05m = 10\sin (\omega . 0+\delta)
\\ \therefore\delta = arc\sin (\frac{0.05}{10}) = 0.005 rad
$$""",

      ),
    );
  }
}
class shm_Q_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
      HTMLtext(

         r"""$$  \omega = \frac{v_{max}}{A}=\frac{0.02}{0.004}=5 s^{-1}
\\T=\frac{2\pi}{\omega} = 1.256s$$""",

      ),
    );
  }
}
//wave
class wave_Q_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
      HTMLtext(

         r"""$$ 1.15\sin 0.01(\frac{2000}{0.01}t+x)\\ \Rightarrow A=1.15\\And,\frac{2\pi}{\lambda }=0.01\Rightarrow \lambda =628 \;m$$""",

      ),
    );
  }
}
class wave_Q_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
      HTMLtext(

         r"""$$ \frac{\lambda}{2}=0.346
\\ \Rightarrow \; \lambda =0.692\\
Therefore \\ v=f \times \lambda \\= 480 \times 0.692 = 332.2 \; ms^{-1}
$$""",

      ),
    );
  }
}
class wave_Q_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
      HTMLtext(

         r"""$$  যেহেতু \; ভর \;কমলে \; কম্পাংক \;বাড়ে
\\N\uparrow \Rightarrow f_1 \uparrow  \;or \; f_2 \downarrow
\\5=f_A -512
\\ \Rightarrow f_A=517Hz

$$""",

      ),
    );
  }
}
class wave_Q_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
      HTMLtext(

         r"""$$  \Delta \beta =10log_{10}({\frac{P_2}{P_1}})dB
\\\Rightarrow \Delta \beta =10log_{10}({\frac{60}{30}})dB
\\=3dB$$""",),
    );
  }
}
//Heat and Gas
class Heat_Q_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
      HTMLtext(
         r"""$$যেহেতু \; তাপমাত্রা \; T \; স্থির ,
\\P_1V_1=P_2V_2
\\ P_1=Normal \; Pressure = 101325 \; Pa
\\V_2=4V_1
\\ Therefore \; P_2=\frac{101325}{4} Pa
\\=25.325 \times 10^3 \; Pa
  $$""",),
    );
  }
}
class Heat_Q_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
      HTMLtext(
         r"""$$Here,
\\T=273+27 =300K
\\KE = \frac{3}{2}RT
\\ \Rightarrow KE = \frac{3}{2} \times 8.316 \times 300\; Jmol^{-1}
\\=3742.2 \;Jmol^{-1}$$""",),
    );
  }
}
class Heat_Q_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
      HTMLtext(
         r"""$$ Let \; the \; desired \; temperature =t
\\ \frac{C}{5}= \frac{F-32}{9}
\\ Here \; C=F=t
\\ \frac{t}{5} = \frac{t-32}{9}
\\ \Rightarrow t=-40
\\Answer: -40^o C\; and\; -40F
$$""",),
    );
  }
}
class Heat_Q_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor:Colors.green[400],
        title: Text("SOLVE",
            style: TextStyle(fontFamily: "Knewave",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,letterSpacing: 1)),
        centerTitle: true,

      ),
      body:
      Card(
        child: HTMLtext(
           r"""$$ \\ \;
          \\ R= \frac{f}{F} \times 100 \%
          \\ \;
          \\ \Rightarrow \frac{67.3}{100}=\frac{f}{F}=\frac{13.64 \times 10^{-3}}{F}
          \\ \Rightarrow F=2.02 \times 10^{-4} mHgP

$$""",),
      ),
    );
  }
}
//Practice PRoblem

class practiceProblem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:50),
      child: Scaffold(
          backgroundColor: Colors.greenAccent[100],
          appBar: AppBar(
            backgroundColor:Colors.green[400],
            title: Text("SOLVE",
                style: TextStyle(fontFamily: "Knewave",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,letterSpacing: 1)),
            centerTitle: true,

          ),
          body:ListView(children:<Widget>[
            Text("SOLUTION TO PRACTICE PROBLEMS",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
            HTMLtext(
              r"""$$
              \\(1) T_1= 273K\;
 T_2= ?

\\প্রশ্নমতে , \;C_2=\frac{C_1}{2}
\\or , C_1=2C_2
\\আমরা\; জানি, \;C_1=\sqrt{\frac{3RT_1}{M}}(1)
\\আবার,\; C_2= \sqrt{\frac{3RT_2}{M}}(2)\\(2)/(1)\Rightarrow \; \frac{C_1}{C_2}=\sqrt{\frac{T_2}{T_1}}
\\ \frac{C_2}{{2C}_2}=\sqrt{\frac{T_2}{T_1}}
\\0.5=\sqrt{\frac{T_2}{T_1}}, \\or\; 0.25= \frac{T_2}{T_1}
\\or,\; T_2=0.25\times 273=68.25K
\\\;\\\;\\----------------------------------
  \\(2)I= 100I_0
\\তীব্রতার \;লেভেল \; \beta=10 log I/I_0\  \\dB=10 log \frac{{100I}_0}{I_0}dB=10 log100 dB
\\= 20 dB.
 $$""",),

            HTMLtext(r"""$$
            \\\;
\\(3)\frac{\lambda}{2}= 50m
\\or ,\; λ = 100m
\\এখানে,\; তরঙ্গের \;কম্পাংক \;n=320Hz

\\V=?
\\v=nλ
\\\Rightarrow V=32000m/s (ANS)
\\\;\\\;\\----------------------------------
\\(4)আমরা\; জানি, E_k=\frac{1}{2}{KA}^2-\frac{1}{2}{KX}^2
\\=\frac{1}{2}{KA}^2-\frac{1}{2}{K(\frac{A}{4}\ )}^2
\\E_k=\frac{1}{2}K\frac{{15A}^2}{16}
\\\;\\স্থিতিশক্তি,E_p= \frac{1}{2}{KX}^2 ; \\এখানে , x=\frac{A}{4}
\\=\frac{1}{2}{K(\frac{A}{4}\ )}^2
\\=\frac{1}{2}K\frac{A^2}{16}
\\\;\\গতিশক্তি\; এবং\; স্থিতিশক্তির \;অনুপাত\\= \frac{\frac{1}{2}K\frac{{15A}^2}{16}}{\frac{1}{2}K\frac{A^2}{16}}= 15
\\গতিশক্তি : স্থিতিশক্তি = 15:1(Ans)
\\\;\\\;\\----------------------------------
\\(5)এখানে\; বিস্তার A=0.004m
\\কণার\; সর্বচ্চো \;বেগ V=0.02m/s

\\V=A\ \omega
\\or, V=A\frac{2\pi}{T}
\\or, T=\frac{A2\pi}{V}-= 1.256s.
$$"""),
            Divider(color:Colors.blue),
            HTMLtext( r"""$$
\\(6)মোট \;আয়োতনে\; সঞ্চিত \;শক্তি=\\ \frac{1}{2}\times পীড়ন \times বিকৃতি \times আয়তন
\\=\frac{1}{2}\frac{25\ast9.8}{\pi{(\frac{{1\ast10}^3}{2})}^2}*\\\frac{{0.1\ast10}^{-3}}{5}*\pi*{(\frac{{1\ast10}^3}{2})}^2\ast5
\\=0.01225J.
\\\;\\\;\\----------------------------------
\\(7)এখানে ,\; তারের \;দৈর্ঘ্য, L=1m
\\ r=2mm={2\times 10}^{-3}m
\\m=5Kg
\\l=0.1mm={1\ast10}^{-3}m
\\D={4\times 10}^{-3}m
\\\sigma=0.4
\\\sigma=\frac{\frac{d}{D}}{\frac{l}{L}}
\\d={1.6\times 10}^{-7}
\\r= {8\times 10}^{-8}m (Ans)
\\\;\\\;\\----------------------------------
\\(8)v = \sqrt{gR}= \sqrt{9.8\ast6.4\ast{10}^6}\\={7.92Kms}^{-1}
\\\;\\\;\\----------------------------------
\\(9) M_m=\frac{M_e}{81}  \\ R_m=\frac{R_e}{4}\\\;
\\ g=\frac{GM}{R^2}\;
\&\; g_m=\frac{GM_m}{{R_m}^2}......(1)
\\ g_e=\frac{GM_e}{{R_e}^2}......(2)
\\(1) / (2) \Rightarrow
\\\frac{g_m}{g_e}=\frac{\frac{GM_m}{{R_m}^2}}{\frac{GM_e}{{R_e}^2}}=\frac{16}{81}
\\ \frac{W_m}{W_e}=\frac{mg_m}{mg_e}=\frac{16}{81}
\\ \Rightarrow \; W_m=\frac{16}{81} \times 648 = 128
\\ Lost \; Weight=648-128=520N
\\\;\\\;\\----------------------------------
\\(10) \frac{GM_e}{x^2}=\frac{GM_m}{{(R-x)}^2}\\(x =পৃথিবী \;হতে \;দূরত্ব )
\\ \frac{49}{x^2}=\frac{1}{{(R-x)}^2}
\\ \frac{x}{R-x}=7\\\;
\\x=\frac{7}{8}R\\={3.5\times 10}^5km\\\;$$ """,),
            HTMLtext( r"""$$
    \\\;\\\;\\----------------------------------
    \\(11)  \frac{1}{2}m v^2=mgh
    \\\Rightarrow v=\sqrt{2 \times 9.8 \times 0.1}=1.4 ms^{-1}
    \\\;
    m_1v_1+m_2v_2=(m_1+m_2)V
    \\\Rightarrow v_2=281.4 ms^{-1}
    \\\;\\\;\\----------------------------------
    \\(12)  E_k=\frac{P^2}{2m}
={2\times 10}^{-3}J
\\\;\\\;\\----------------------------------
    \\(13) v^2=\overrightarrow{v} . \overrightarrow{v}
\\=(7\hat{i}-6\hat{j}+5\hat{k}) {ms}^{-1}(7\hat{i}-6\hat{j}+5\hat{k}) {ms}^{-1}
\\=49+36+25
\\=110 m^2s^{-2}
 \\E_k=\frac{1}{2}mv^2=0.5\times 10\times110=550J
 \\\;\\\;\\----------------------------------
    \\(14) T=\frac{mv^2}{r}
    \\\Rightarrow v^2=\frac{Tr}{m}\\
v={10.84ms}^{-1}\\\;
\\\;\\\;\\----------------------------------
             $$ """,),
            HTMLtext( r"""$$
            \\(15)m_1u_1+m_2u_2=(m_1+m_2)v\\ v=\frac{m_1u_1+m_2u_2}{(m_1+m_2)}
\\v={0.995ms}^{-1}
\\\;\\\;\\----------------------------------
\\ (16)v_x=u=50{ms}^{-1}
\\ v_y=gt=9.8\ast329.4ms^{-1}
\\3sec\; পর \;বেগ \;v \;হলে ,\\ v=\sqrt{{v_x}^2+{v_y}^2}=58.003{ms}^{-1}
\\\;\\\;\\----------------------------------
\\(17)P+Q=28
\\P-Q=4
\\\therefore p=16
\\Q=12
\\And \; \theta={90}^0
\\\therefore R=\sqrt{P^2+Q^2+2PQcos\theta}\\=\sqrt{400}=20
\\\;\\\;\\----------------------------------
\\(18) v_1={\ \omega\ r}_1 \Rightarrow \omega=\frac{v_1}{r_1}
\\v_2={\ \omega\ r}_2 \Rightarrow \omega=\frac{v_2}{r_2}
\\ \therefore \frac{v_1}{r_1}=\frac{v_2}{r_2}
\\or,\; \frac{v_1}{v_2}=\frac{r_1}{r_2}=\frac{0.12}{0.18}=\frac{2}{3}
\\\;\\\;\\----------------------------------
\\(19)dm=\frac{m}{60}
\\dt=1 s
\\ v_r={2400ms}^{-1}
\\a=\frac{v_r}{m}\frac{dm}{dt}-g\\\;
\\a=\frac{2400}{m}\frac{m}{60}-g
\\a={30.2ms}^{-2}
\\\;\\\;\\----------------------------------
\\(20)F=ma
\\a=10/2={5ms}^{-2}
\\s=ut+\frac{1}{2}at^2
\\u ={15ms}^{-1}\\\;\\\;
 $$ """,),
            Divider(color:Colors.blue,thickness: 1.5,),
            Text("THANK YOU",style:TextStyle(color: Colors.red,fontSize: 32.0,fontWeight: FontWeight.bold,fontFamily: "Knewave", ),textAlign:TextAlign.center ,),
            Divider(color:Colors.blue,thickness: 1.5,),

          ],)
      ),
    );
  }
}

