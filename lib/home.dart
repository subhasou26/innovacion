import 'package:flutter/material.dart';
import 'package:innovacion/data/data.dart';
import 'package:innovacion/models/date_model.dart';
import 'package:innovacion/models/event_model.dart';
import 'package:innovacion/models/populer_event_model.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:innovacion/showinbig.dart';
import 'package:innovacion/ShowData.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<DateModel> dates = [];
  List<EventModel>events=[];
  List<PopulerEvent> populerevents = [];
  String todayDateIs="10";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dates=getDates();
    events=getEvents();
    populerevents=getPopuler();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

                padding: EdgeInsets.only(top: 50),
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
                    ),
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
                    ),
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
                    ),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height:200,
                          width: 150,
                          color: Colors.blue,
                          child: Center(child: Text("Registration details")),
                        )
                      ],
                    ),



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

class DateTile extends StatelessWidget {
  String weekDay;
  String date;
  bool isSelected;
  DateTile({required this.weekDay,required this.date,required this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: isSelected?Color(0xffFCCD00):Colors.transparent,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(date,style: TextStyle(
            color: isSelected?Colors.black:Colors.white,
            fontWeight: FontWeight.w600,
          ),),
          SizedBox(height: 13,),
          Text(weekDay,style:TextStyle(
            color: isSelected?Colors.black:Colors.white,
            fontWeight: FontWeight.w600,
          ),)
        ],
      ),
    );
  }
}

class EventTile extends StatelessWidget {
  String imgAssertPath;
  String eventType;
  EventTile({required this.imgAssertPath,required this.eventType});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Color(0xff29404E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imgAssertPath,height:40 ,),
          SizedBox(height: 8,),
          Text(eventType,style: TextStyle(
            color: Colors.white
          ),)
        ],
      ),
    );
  }
}

class PopularEventTile extends StatelessWidget {
  String desc;
  String dates;
  String address;
  String imageAssetPath;
  PopularEventTile({required this.desc,required this.dates,required this.address,required this.imageAssetPath});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(desc,style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),),
                  Row(
                    children: <Widget>[

                      Image.asset("assets/calender.png",height:10),

                      SizedBox(width: 8,),
                      Text(dates,style:TextStyle(
                          color: Colors.white,
                          fontSize:20,
                      ),),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Image.asset("assets/location.png",height:10),
                      SizedBox(width: 8,),
                      Text(address,style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Image.asset("assets/tileimg.png",height: 60),
        ],
      ),
    );
  }
}






