import 'package:flutter/material.dart';



class ShowDetails extends StatelessWidget {
  final snapshot;
  final index;
  const ShowDetails({Key? key, required this.snapshot,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text( snapshot.data!.docs[index]["gfrom"]),
      ),
    );
  }
}
