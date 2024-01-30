import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_controller.dart';

class Event extends StatefulWidget {
  Event({Key? key}) : super(key: key);

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    'https://images.unsplash.com/photo-1612825173281-9a193378527e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=499&q=80',
    'https://images.unsplash.com/photo-1580654712603-eb43273aff33?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1627916607164-7b20241db935?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
    'https://images.unsplash.com/photo-1522037576655-7a93ce0f4d10?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1570829053985-56e661df1ca2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  ];
  final eventDatas=[
    "Accuracy is as important as speed when it comes to line follower robots. Following a single line with a few curves and loops seems to be an easy job but not every robot stands up to the constraints that a single line imposes. The discipline of your automatons are set to be tested when they enter thetracker arena on 10th-12th March with hundreds of others that will race against time to bustle fromstart to finish in the minimum possible time. A perfect blend of speed and accuracy is the demand ofthe hour.",
    "It is time to build a bot, less like a bot but more like an SUV. Be prepared for the dirt, the hills,the pots, the caves, the tarmac and the obstacles you will better prefer to avoid. Here we invite zealotsfrom all parts of the country to bustle their bots on the X-Race arena, at Innovacion 2023, thebiggest techfest in Kolkata. The twitchy terrains are ready to test your speed and agility and toprovide a groovy experience to the speed fanatic in you. We make your dream to off-road come true atthe biggest techfest in Kolkata, Innovacion 2023! So pull out your tools from mothballs and get towork.",
    "The tension was palpable in the audience as two robots played a soccer match. Move, the supporters of oneteam shouted. He, the other robot, is blocking is, alleged the others. Robofooties-that's what the gamewas called. Turn on the heat as it's time to witness the biggest Robofootball Competition in the town,at Innovacion 2023. The two-rounds event is an ultimate showcase of love of robotics and footballwhere each team battles to be the best at the biggest techfest in Kolkata, Innovacion 2023.",
    "MAD CAD is an event by Innovación that challenges you to create and design something new, on the topicgiven right on the stage. This gives an unique occasion to prove your skills and test your creativityby participating in this remarkable event.Indoor engineers are immensely important for us becausetheir efforts provide critical support to us and thus without their pioneering and innovative efforts,our work wouldn't be possible. So be dilligent and accomplish the task. Bring the engineer out.",
    "IEM Innovacion 2023 is going to organise an international paper-presentation event ELECTROSLIDES -2023 &amp; will start it's maiden run in the fold of Innovacion 2023. The said event will acceptparticipants from different institutions and industries across the globe. A team consisting of a maximum up to 4 members will present theirresearch paper , in front of eminent experts in relevant fields.",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("INNOVACION",style: TextStyle(
                  color: Colors.white,fontSize: 25,
                  fontWeight: FontWeight.w700,

                ),),
              ],
            ),
           
            SizedBox(height: 30,),
            CarouselSlider.builder(
                carouselController: controller,
                itemCount: urlImages.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = urlImages[index];
                  final eventData=eventDatas[index];
                  return buildImage(urlImage,eventData, index);
                },
                options: CarouselOptions(
                    height: 500,
                    autoPlay: true,
                    enableInfiniteScroll: false,
                    autoPlayAnimationDuration: Duration(seconds: 2),
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index))),
            SizedBox(height: 12),
            buildIndicator()
          ],
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
    onDotClicked: animateToSlide,
    effect: ExpandingDotsEffect(dotWidth: 15, activeDotColor: Colors.blue),
    activeIndex: activeIndex,
    count: urlImages.length,
  );

  void animateToSlide(int index) => controller.animateToPage(index);
}

Widget buildImage(String urlImage,String eventData, int index) {
 return Container(child:
     Column(
       children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
     Image.network(urlImage,height: 150,),
         ],),
  Row(children: [
    Expanded(child: Text(eventData,style: TextStyle(color: Colors.white),)),
  ],),

       ],
  
     ));
 
}
   