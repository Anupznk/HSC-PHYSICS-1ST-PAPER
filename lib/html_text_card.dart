import 'package:flutter/material.dart';
import 'chapter.dart';
import 'package:flutter_tex/flutter_tex.dart';

Color baseColor = Color(0xFF50CB88);

class HTMLTextCard extends StatelessWidget {
  final Chapter
      chapter; // since this is a stateless widget, we need to use the final keyword

  HTMLTextCard({required this.chapter});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 0,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 16),
        child: Align(
          alignment: Alignment.topLeft,
          child: ListTile(
              title: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  // child: Text(chapter.text, sty.000-
                  // le:TextStyle(
                  //     color: Colors.black,
                  //     fontSize: 18),
                  // ),
                  // todo: the above codes are backup

                  child: TeXView(
                    renderingEngine: TeXViewRenderingEngine.katex(),
                    loadingWidgetBuilder: (context) => Center(
                      child: Column(
                        children: <Widget>[
                          CircularProgressIndicator(color: baseColor,),

                        ],
                      ),
                    ),
                    child: TeXViewColumn(children: [
                      TeXViewDocument(chapter.text,
                          style: TeXViewStyle(
                            textAlign: TeXViewTextAlign.Left,
                            sizeUnit: TeXViewSizeUnit.Percent,
                            contentColor: Colors.black,
                          )),
                    ]),
                  )
              )
          ),
        ),
      ),
    );
  }
}
