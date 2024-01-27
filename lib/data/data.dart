import 'package:innovacion/models/date_model.dart';
import 'package:innovacion/models/event_model.dart';
import 'package:innovacion/models/populer_event_model.dart';

List<DateModel> getDates() {
  List<DateModel> dates = [];

  DateModel dateModel = DateModel();

  // 1
  dateModel = DateModel();
  dateModel.date = "10";
  dateModel.weekDay = "Sun";
  dates.add(dateModel);

  // 2
  dateModel = DateModel();
  dateModel.date = "11";
  dateModel.weekDay = "Mon";
  dates.add(dateModel);

  // 3
  dateModel = DateModel();
  dateModel.date = "12";
  dateModel.weekDay = "Tue";
  dates.add(dateModel);

  return dates;
}

List<EventModel>getEvents(){
  List<EventModel> events = [];
  EventModel eventModel=new EventModel();

  //1
  eventModel=EventModel();
  eventModel.imgAssertPath="assets/concert.png";
  eventModel.eventType="Concert";
  events.add(eventModel);

  //2
  eventModel=EventModel();
  eventModel.imgAssertPath="assets/sports.png";
  eventModel.eventType="Sports";
  events.add(eventModel);

  //3
  eventModel=EventModel();
  eventModel.imgAssertPath="assets/education.png";
  eventModel.eventType="Education";
  events.add(eventModel);


  return events;
}


List<PopulerEvent>getPopuler(){
  List<PopulerEvent> populerevents = [];
  PopulerEvent populereventModel=new PopulerEvent();

  //1
  populereventModel=PopulerEvent();
  populereventModel.desc="Coding";
  populereventModel.address="IEM Gurukul";
  populereventModel.date="Mar 20, 2023";
  populereventModel.imageAssetPath="assets/tileimg.png";
  populerevents.add(populereventModel);

  //2
  populereventModel=PopulerEvent();
  populereventModel.desc="Gameing";
  populereventModel.address="IEM management";
  populereventModel.date="Mar 20, 2023";
  populereventModel.imageAssetPath="assets/second.png";
  populerevents.add(populereventModel);
   return populerevents;
}

