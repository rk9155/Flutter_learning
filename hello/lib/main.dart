import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}

// Stateless widget --> cannot change at runtime

// class myApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Simple App",
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),

//       home: Scaffold(
//         appBar : AppBar(
//           title: Text(
//             "Simple App"
//           ),
//         ),
//         body: Column(
//           children: <Widget>[
//             Text(
//               "This is a text widget"
//             ),
//             RaisedButton(
//               onPressed: () {},
//               child: Text(
//                 "Raised button",
//               ),)
//           ],),



//         // body: Center(
//         //   // child: Text(
//         //   //   "Hii its RK !!",
//         //   //   style: new TextStyle(
//         //   //     color: Colors.red,
//         //   //     fontSize: 40.0,
//         //   //     fontStyle: FontStyle.italic,
//         //   //     fontWeight: FontWeight.bold,
//         //   //     letterSpacing: 5.0,
//         //   //     // decoration: TextDecoration.underline,
//         //   //     // backgroundColor: Colors.cyan,
//         //   //     fontFamily: "Times New Roman",
//         //   //   ),
//         //   // ),
//         //   // Button
//         //   // child: MaterialButton(
//         //   //   color: Colors.red[400],
//         //   //   splashColor: Colors.green,
//         //   //   onPressed: () {},
//         //   //   child: Text(
//         //   //     "Material Button",
//         //   //     style: TextStyle(
//         //   //       fontSize: 20.0,
//         //   //       color: Colors.white
//         //   //     ),
//         //   //   ),
//         //   //   shape: StadiumBorder(),
//         //   // ),
//         // )

//       ),
//     );
//   }
// }


// Stateful widget --> state can be changed at runtime

class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      title: "Stateful",
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  int datatochange = 0;
  void datachange(){
    setState(() {
      datatochange+=1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "AppBar",
        )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "$datatochange",
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
            ),

            RaisedButton(
              onPressed: datachange,
              padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 20.0),
              child: Text(
                "Click Me !",
                style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                ),
              ),
              color: Colors.cyan,
              )
          ],
          ),
          ),
    );
  }
}





