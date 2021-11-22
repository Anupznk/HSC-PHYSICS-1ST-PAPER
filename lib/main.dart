// @dart=2.9
// THE ABOVE LINE SHOULD BE AS IT IS (COMMENTED) FOR RUNNING WITH UNSOUND NULL SAFETY
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hsc_physics/physics_1st_paper_list.dart';
import 'package:hsc_physics/practice.dart';

import 'chapter_card.dart';
Color baseColor = Color(0xFF50CB88);

void main() {
  runApp(MaterialApp(

    home: Scaffold(
        backgroundColor: Color(0xFFFAFCFE),

        body: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: Container(
            child: Body(),
          ),
        )

    ),
    routes: {

      '/vector': (context) => Vector1(),
      '/graph': (context) => Graph1(),
      '/motion': (context) => Motion1(),
      '/linear motion': (context) => LM1(),
      '/angular motion': (context) => ALM1(),
      '/wpe': (context) => WPE1(),
      '/gravity': (context) => Gravity1(),
      '/elasticity': (context) => Elasticity1(),
      '/fluid': (context) => Fluid1(),
      '/shm': (context) => SHM1(),
      '/wave': (context) => Wave1(),
      '/heat': (context) => Heat1(),

    },

  ));
}

class  Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 92,),
          Text(
            'HSC PHYSICS',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              letterSpacing: 2

            ),
          ),
          SizedBox(height: 42,),
          Card(
            elevation: 0,
            color: baseColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0),
            ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 18, 12, 18),
            child: ListTile( title: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
              child: Text("PHYSICS 1st Paper", style:TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,fontSize: 22),
                ),
            ),
                subtitle: Text("Mechanics, Wave and Sound, Heat and Gas, Properties of Matter",
                    style:TextStyle(color: Colors.white, fontSize: 16)),
                trailing: FaIcon(FontAwesomeIcons.book, color: Colors.white, size: 46,),

                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Physics1stPaperList()),
                  );
                  // todo: set route
                },
              ),
          ),

          ),
          SizedBox(height: 10,),
          Card(
            elevation: 0,
            color: baseColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12.0, 18, 12, 18),
              child: ListTile( title: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                child: Text("Practice Test", style:TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,fontSize: 22),
                ),
              ),
                subtitle: Text("Take a test and assess your preparation",
                    style:TextStyle(color: Colors.white, fontSize: 16)),
                trailing: Icon(Icons.add_task, color: Colors.white, size: 46,),

                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Practice()),
                  );

                },
              ),
            ),

          ),
          Spacer(),

          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0,16, 0),
            child: Image.asset('assets/bg.png'),
          ),

        ],
      ),
    );
  }
}

