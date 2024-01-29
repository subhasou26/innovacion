import 'package:flutter/material.dart';



class ShowDetails extends StatelessWidget {
  final snapshot;
  final index;
  const ShowDetails({Key? key, required this.snapshot,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text( snapshot.data!.docs[index]["desc"]),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                    width: 200,
                    child: Image(image:NetworkImage("${snapshot.data!.docs[index]["imagePath"]}"))),


              ],
            ),
            SizedBox(height: 30,),
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
              child: Center(child: Text("REGISTER",style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700
              ),)),
            ),
          ],
        ),
      ),
    );
  }
}
