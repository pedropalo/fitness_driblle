import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    _cards({@required String time, @required String exercice, @required String level, @required int reps,
    Color color = Colors.orange }) {
      return Container(
        margin: EdgeInsets.only(bottom: 16),
        width: MediaQuery.of(context).size.width,
        constraints: BoxConstraints(
          minHeight: 160
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Stack(
          children: [
            Positioned(
              right: 16,
              top: 16,
              child: Text(
                "$time",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              )
            ),

            Container(),

            Positioned(
              top: 160 / 3,
              left: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$exercice",
                    style: TextStyle(
                      fontWeight: FontWeight.w900
                    ),
                  ),

                  Text(
                    "$level",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),

                  Text(
                    "$reps items",
                  ),
                ],
              )
            )


          ],
        ),
      );
    }

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [

                // Topo
                Container(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi Michael",
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Container(height: 16),

                          Text(
                            "Don't Miss The Fitness! ☺",
                          ),
                        ],
                      ),

                      Container(
                        width: 64,
                        height: 64,
                        child: 
                          CircleAvatar(),
                      )
                    ],
                  ),
                ),

                // Titulo conteudo,
                Container(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Practice",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Text(
                        "All"
                      ),
                    ],
                  ),
                ),

                // Cards
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      _cards(
                        time: "55 Min",
                        exercice: "He Sat Down",
                        level: "Amateur Level",
                        reps: 15,
                      ),
                      _cards(
                        time: "41 Min",
                        exercice: "Muscle Stretching",
                        level: "Intermediate Level",
                        reps: 16,
                        color: Colors.blue[300]
                      ),
                    ],
                  ),
                )
                
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}
