import 'package:flutter/material.dart';
import 'package:innovacion/data/data.dart';
import 'package:innovacion/models/date_model.dart';
import 'package:innovacion/models/event_model.dart';
import 'package:innovacion/models/populer_event_model.dart';


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
          Container( decoration: BoxDecoration(
            color: Color(0xff102733),
          ),),
            Container(
              padding: EdgeInsets.symmetric(vertical: 50,horizontal:24 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset("assets/logo.png",height: 30,),
                      SizedBox(width: 4,),
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
                      Spacer(),
                      Image.asset("assets/notify.png",height: 20,),
                      SizedBox(width: 10,),
                      Image.asset("assets/menu.png",height: 20,),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children:<Widget> [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Hello Users !",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 19,
                          ),),
                          SizedBox(height: 6,),
                          Text("Let's explore the events",style: TextStyle(
                            color: Colors.white,fontSize: 15
                          ),)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  // Dates
                  Container(
                    height: 60,
                    child: ListView.builder(
                        itemCount: dates.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){

                          return InkWell(
                            onTap: (){
                               todayDateIs=dates[index].date;

                              setState(() {

                              });
                            },
                            child: DateTile(
                              weekDay:dates[index].weekDay,
                              date:dates[index].date,
                              isSelected: todayDateIs==dates[index].date,
                            ),
                          );

                        }
                    ),
                  ),
                  SizedBox(height: 10,),
                  //Events
                  Text("All Events",style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),),
                  SizedBox(height: 10,),
                  Container(
                    height: 100,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: events.length,
                      itemBuilder: (context,index){
                        return EventTile(
                          imgAssertPath:events[index].imgAssertPath ,
                          eventType: events[index].eventType,

                        );
                      },
                    ),
                  ),
                  //Populer event
                  SizedBox(height: 16,),
                  Text("Populer Event",style: TextStyle(
                    color: Colors.white,
                  ),),
                  Container(
                    child:ListView.builder(
                      shrinkWrap: true,

                      itemCount: populerevents.length,
                      itemBuilder: (context,index){
                        return PopularEventTile(
                          desc: populerevents[index].desc,
                          imageAssetPath: populerevents[index].imageAssetPath,
                          dates: populerevents[index].date,
                          address: populerevents[index].address,
                        );
                      },
                    ) ,
                  ),
                ],
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

