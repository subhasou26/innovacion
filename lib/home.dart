import 'package:flutter/material.dart';
import 'package:innovacion/NavBar.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:innovacion/showinbig.dart';
import 'package:innovacion/ShowData.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    // TODO: implement initState

  }
  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    print(screenWidth);
    bool isTablet(BuildContext context)=>MediaQuery.of(context).size.width>=500;

    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(title: Text("INNOVACIA",style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.black,),
      body: Container(
        child: Stack(
          children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/background.jpg"),
              fit: BoxFit.cover
              ),

            ),
          ),

            SingleChildScrollView(
              child: Container(

                padding: EdgeInsets.only( top:50),
                child: Column(

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text("About The Event",style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700
                        ),)
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(

                        children:<Widget> [

                          Expanded(
                            child: Text("Institute of Engineering & Management, Kolkata in associate with University of Engeering & Management is organising its ANual Techno-management Fest-Innovacion 2024 from 10th-12th march,2024",
                               style: TextStyle(
                                 fontSize: 15,
                                 color: Colors.white
                               ), ),
                          ),

                            ],
                      ),
                    ),
              SizedBox(height: 15,),
                      Row(

                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 50),
                          width: 190,
                          height: 80,

                          decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(11),
                              border: Border.all(color: Colors.blue,
                                  width: 3)
                          ),
                          child: Center(child: Text("6L+ VIEWERS",style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue
                          ),)),
                        ),
                      ],
                    ), //6l+
                    SizedBox(height: 20,),
                    Row(

                      children: [

                          Container(

                            margin: EdgeInsets.only(left: 150),
                            width: 190,
                            height: 80,

                            decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(11),
                                border: Border.all(color: Colors.blue,
                                    width: 3)
                            ),
                            child: Center(child: Text("3.5L+ PRIZES",style: TextStyle(
                                fontSize: 20,
                                color: Colors.blue
                            ),)),
                          ),


                      ],
                    ),//3.5l+
                    SizedBox(height: 20,),
                    Row(

                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 50),
                          width: 190,
                          height: 80,

                          decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(11),
                              border: Border.all(color: Colors.blue,
                                  width: 3)
                          ),
                          child: Center(child: Text("10K+ ATTENDEES",style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue
                          ),)),
                        ),
                      ],
                    ),//10k attendance
                    SizedBox(height: 20,),
                    Row(

                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 150),
                          width: 190,
                          height: 80,

                          decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(11),
                              border: Border.all(color: Colors.blue,
                                  width: 3)
                          ),
                          child: Center(child: Text("25+ EVENTS",style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue
                          ),)),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("APPLY HERE TO BE OUR CAMPUS AMBASSADOR",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15
                        ),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue,
                                spreadRadius: 2,
                                blurRadius: 8,
                                offset: Offset(4,4),
                              ),
                              BoxShadow(
                                color: Colors.blue,
                                spreadRadius: 2,
                                blurRadius: 8,
                                offset: Offset(-4,-4),
                              )],
                          ),
                          child: Center(child: Text("CLICK HERE",style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700
                          ),)),
                        ),

                      ],
                    ),
                    SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TimerCountdown(
                          format: CountDownTimerFormat.daysHoursMinutesSeconds,
                          endTime: DateTime.now().add(Duration(
                            days: 20,
                            hours: 14,
                            minutes: 15,
                            seconds: 34
                          )),
                          timeTextStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),
                          descriptionTextStyle: TextStyle(color: Colors.white),
                          colonsTextStyle: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                  Row(

                    children: [
                      SizedBox(width: 20,),
                      Container(

                        child: Text("Events",style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.w600,
                            fontSize: 20
                        ),),
                      ),
                    ],
                  ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [

                        Container(
                          margin: EdgeInsets.only(top: 10,left: 20),
                          height: 75,
                          width: 75,

                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/robot.png"))
                          ),


                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10,left: 20),
                          height: 75,
                          width: 75,

                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/exhi.png"))
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10,left: 20),
                          height: 75,
                          width: 75,

                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/game.png"))
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [

                        Container(
                          margin: EdgeInsets.only(top: 10,left: 20),
                          height: 75,
                          width: 75,

                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/xray.png"))
                          ),


                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10,left: 20),
                          height: 75,
                          width: 75,

                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/manage.png"))
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10,left: 20),
                          height: 75,
                          width: 75,

                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/quiz.png"))
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(
                                builder:(context)=>ShowData()
                            ));
                          },
                          child: Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue,
                                  spreadRadius: 2,
                                  blurRadius: 8,
                                  offset: Offset(4,4),
                                ),
                                BoxShadow(
                                  color: Colors.blue,
                                  spreadRadius: 2,
                                  blurRadius: 8,
                                  offset: Offset(-4,-4),
                                )],
                            ),
                            child: Center(child: Text("ALL EVENTS",style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700
                            ),)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Registration",style: TextStyle(color: Colors.white,fontSize: 20),)
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 300,
                          height: 300,

                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue,
                                spreadRadius: 2,
                                blurRadius: 8,
                                offset: Offset(4,4),
                              ),
                              BoxShadow(
                                color: Colors.blue,
                                spreadRadius: 2,
                                blurRadius: 8,
                                offset: Offset(-4,-4),
                              )],
                          ),
                          child:Column(
                            children: [

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 20,),
                                Text("Central Registration",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w700),)
                              ],),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Text("Central RegistrationCan Register for all the events excluding Gaming & Photography with Central RegistrationPer-Head Registration Fee of Rs 300Certificates of Participation for all the Events",style: TextStyle(
                                        color: Colors.white,fontSize: 18
                                      ),),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(context,MaterialPageRoute(
                                          builder:(context)=>ShowData()
                                      ));
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.black54,
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black54,
                                            spreadRadius: 2,
                                            blurRadius: 8,
                                            offset: Offset(4,4),
                                          ),
                                          BoxShadow(
                                            color: Colors.black54,
                                            spreadRadius: 2,
                                            blurRadius: 8,
                                            offset: Offset(-4,-4),
                                          )],
                                      ),
                                      child: Center(child: Text("PAY",style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700
                                      ),)),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30,),// central registration



                  ],
                ),

              ),
            ),

          ],
        ),
      ),
    );
  }
}



