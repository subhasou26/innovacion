import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:innovacion/home.dart';
import 'package:innovacion/background.dart';
import 'package:innovacion/dbHelper/mongodb.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
   await MongoDatabase.connect();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen()
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: <Widget>[
          Container(
            child: BackgroundVideo(),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 150,),
                Image.asset("assets/logo.png",height: 50,),
                SizedBox(height:18,),
                Row(
                  children: <Widget>[
                    Text("INNOVA",style: TextStyle(
                      color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600
                    ),),
                    Text("CION",style: TextStyle(
                      color:Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600
                    ),),
                  ],
                ),
                SizedBox(height: 14,),
                Text("Institute of Engineering & Management, Kolkata in associate with University of Engeering & Management is organising its ANual Techno-management Fest-Innovacion 2024 from 10th-12th march,2024"
                ,style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),),
                SizedBox(height: 14,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(
                        builder:(context)=>HomeScreen()
                    ));
                  },
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Text("Get Started",style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),),
                        SizedBox(height: 10,),
                        Icon(Icons.add_circle,color: Colors.white,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}

