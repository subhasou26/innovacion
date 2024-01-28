import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:innovacion/showinbig.dart';


class ShowData extends StatefulWidget {
  const ShowData({Key? key}) : super(key: key);

  @override
  State<ShowData> createState() => _ShowDataState();
}
_lunchs(uri) async{
  if(await canLaunchUrl(uri)){
    await launchUrl(uri);
  }
  else{
    throw "Cound not find uri";
  }
}
class _ShowDataState extends State<ShowData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show data"),
        centerTitle: true,
      ),

      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("events").snapshots(),
        builder: (context,snapshot){
          if(snapshot.connectionState==ConnectionState.active){
            if(snapshot.hasData){
              return ListView.builder(
                itemBuilder:(context,index){
                  return InkWell(
                    onTap: (){
                      final uri=Uri.parse(snapshot.data!.docs[index]["gfrom"]);
                       //_lunchs(uri);
                      print(snapshot.data!.docs[index]);
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ShowDetails(snapshot: snapshot,index: index,)));
                    },
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text("${index+1}"),
                      ),
                      title: Text("${snapshot.data!.docs[index]["desc"]}"),
                      subtitle: Text("${snapshot.data!.docs[index]["gfrom"]}"),
                      trailing: Text("${snapshot.data!.docs[index]["date"]}"),
                    ),
                  );
                },
                itemCount: snapshot.data!.docs.length,
              );
            }
            else if(snapshot.hasError){
              return Center(child: Text("${snapshot.hasError.toString()} my"),);
            }
            else{
              return Center(child: Text("No data found"),);
            }
          }
          else{
            return Center(child: CircularProgressIndicator(),);
          }
        },),
    );
  }
}
