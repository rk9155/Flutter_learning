import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(myApp());
}
// App1
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

// App 2
// // Stateful widget --> state can be changed at runtime

// class myApp extends StatefulWidget {
//   @override
//   _myAppState createState() => _myAppState();
// }

// class _myAppState extends State<myApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.cyan,
//       ),
//       title: "Stateful",
//       home: homePage(),
//     );
//   }
// }

// class homePage extends StatefulWidget {
//   @override
//   _homePageState createState() => _homePageState();
// }

// class _homePageState extends State<homePage> {

//   int datatochange = 0;
//   void datachange(){
//     setState(() {
//       datatochange+=1;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "AppBar",
//         )
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               "$datatochange",
//             style: TextStyle(
//               fontSize: 40.0,
//               fontWeight: FontWeight.bold,
//             ),
//             ),

//             RaisedButton(
//               onPressed: datachange,
//               padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 20.0),
//               child: Text(
//                 "Click Me !",
//                 style: TextStyle(
//                 fontSize: 20.0,
//                 color: Colors.white,
//                 ),
//               ),
//               color: Colors.cyan,
//               )
//           ],
//           ),
//           ),
//     );
//   }
// }

// // App3 Using images

// class myApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: Image.asset('assets/images/emoji2.png'),
//       ),
//     );
//   }
// }

// // App3 Input text field

// class myApp extends StatefulWidget {
//   @override
//   _myAppState createState() => _myAppState();
// }

// class _myAppState extends State<myApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       title: "Textfield",
//       home: homePage(),
//     );
//   }
// }

// class homePage extends StatefulWidget {
//   @override
//   _homePageState createState() => _homePageState();
// }

// class _homePageState extends State<homePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: "Username",

//               ),
//               maxLength: 20,
//               autocorrect: true,
//               autofocus: true,

//               style: TextStyle(
//                 color: Colors.red,
//                 fontSize: 20.0,
//               ),
//             ),
//           )


//         ],
//       ),
//     );
//   }
// }

// // App 4 Material slpalash Screen

// class myApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//         ),
//         title: "MaterialApp",
//         home: HomePage(),
      
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.red,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               // CircularProgressIndicator(
//               //   backgroundColor: Colors.white,
//               // )

//               Text(
//                 "Splash Screen",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 30.0,
//                   fontFamily: "Monteserrat"
//                 ),
//               )

//           ],
//           )
//       ],
//       ),
      
//     );
//   }
// }

// App 5 Login ui

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login UI",
      theme: ThemeData(
        primarySwatch: Colors.red,
        ),
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/images/coad.jpeg',
            fit: BoxFit.cover,
            color: Colors.black54,
            colorBlendMode: BlendMode.darken,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 1.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Container(
                      height: 200.0,
                      width: 250.0,
                      padding: EdgeInsets.symmetric(
                        horizontal:10.0,
                        vertical : 25.0,
                      ),
                      
                      decoration: BoxDecoration(
                        color:Colors.transparent,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20.0),
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                          padding: EdgeInsets.symmetric(
                            vertical : 20.0,
                          ),
                          child : TextField(
                            autocorrect: false,
                            autofocus: false,
                            style: TextStyle(
                              color: Colors.white10,
                              fontSize: 20.0,
                            ),
                            decoration: InputDecoration(
                              hintText: "Username",
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.orange[100],
                            ),
                          ),
                          ),
                          TextField(
                            autocorrect: false,
                            autofocus: false,
                            obscureText: true,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                            decoration: InputDecoration(
                              hintText: "Password",
                              border: InputBorder.none,
                              filled: true,
                              focusColor: Colors.white,
                              fillColor: Colors.orange[100],
                            ),
                          ),

                      ],
                      ),
                    ),
                    ),
                ],
                )
            ],
            ),
          )

        ],
      ),
      
    );
  }
}



