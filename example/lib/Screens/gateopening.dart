import '../model/lesson.dart';
import 'package:flutter/material.dart';
import 'trackchange.dart';
import 'gateopening.dart';
import 'Schedule.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'TRAIN SCHEDULE',
      theme: new ThemeData(
          primaryColor: Color.fromRGBO(58, 66, 86, 1.0), fontFamily: 'Raleway'),
      home: new GateOpening(title: 'Train Schedule'),
      // home: DetailPage(),
    );
  }
}

class GateOpening extends StatefulWidget {
  GateOpening({Key key, this.title}) : super(key: key);

  final String title;

  @override
  GateOpeningSTATE createState() => GateOpeningSTATE();
}

class GateOpeningSTATE extends State<GateOpening> {
  @override
  void initState() {
    super.initState();
  }

  _changeText() {
    setState(() {
      
    });
  }

  Widget _button(String btntext){
    return Card(elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Container(
            
            child: ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          
          title: Text(
            btntext,
            style: TextStyle(fontSize: 25,color: Colors.black, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            
          },
          )));
    //       Center(
    //   child: Padding(
    //     padding: EdgeInsets.all(10),
    //     child: ButtonTheme(
    //       minWidth: 200.0,
    //       height: 40.0,
    //       child: RaisedButton(
    //         child: Text(btntext),
    //         shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
    //         color: Colors.blue,
    //         textColor: Colors.white,
    //         onPressed: null,
    //       ),
    //     ),
    //   ),
    // );
  }

  List optionlist = ["Open Gate","Close"];
  @override
  Widget build(BuildContext context) {

    final makeBody = Container(
      decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return _button(optionlist[index]);
        },
      ),
    );

    final makeBottom = Container(
      height: 55.0,
      child: BottomAppBar(
        color: Color.fromRGBO(58, 66, 86, 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // IconButton(
            //   icon: Icon(Icons.home, color: Colors.white),
            //   onPressed: () {},
            // ),
            // IconButton(
            //   icon: Icon(Icons.blur_on, color: Colors.white),
            //   onPressed: () {},
            // ),
            // IconButton(
            //   icon: Icon(Icons.hotel, color: Colors.white),
            //   onPressed: () {},
            // ),
            // IconButton(
            //   icon: Icon(Icons.account_box, color: Colors.white),
            //   onPressed: () {},
            // )
          ],
        ),
      ),
    );
    final topAppBar = AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text("GATE OPENING OPTIONS"),
      actions: <Widget>[
        // IconButton(
        //   icon: Icon(Icons.list),
        //   onPressed: () {},
        // )
      ],
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar,
      body: makeBody,
      bottomNavigationBar: makeBottom,
    );
  }
}