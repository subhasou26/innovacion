import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

      elevation: 10,
      shadowColor: Colors.blue,
      backgroundColor: Colors.black.withOpacity(1),

      child: Padding(
        padding: const EdgeInsets.only(top:18.0),
        child: ListView(
          children: [
            SizedBox(
              height: 75,

              child: DrawerHeader(
                curve: Curves.bounceInOut,
          margin: EdgeInsets.zero,
                decoration: BoxDecoration(

                  color: Colors.black.withAlpha(5),
                ),
                child: Text("INNOVACIA",style: TextStyle(color: Colors.white),),
              ),
            ),
            ListTile(
              onTap: (){
                
              },
              leading: Icon(Icons.home),
              title: Text("Home",style: TextStyle(color: Colors.white),),
            ), ListTile(
              leading: Icon(Icons.question_mark),
              title: Text("About",style: TextStyle(color: Colors.white),),
            ),ListTile(
              leading: Icon(Icons.event),
              title: Text("Events",style: TextStyle(color: Colors.white),),
            ),ListTile(
              leading: Icon(Icons.schedule),
              title: Text("Scedule",style: TextStyle(color: Colors.white),),
            ),ListTile(
              leading: Icon(Icons.browse_gallery),
              title: Text("Gallery",style: TextStyle(color: Colors.white),),
            ),ListTile(
              leading: Icon(Icons.boy),
              title: Text("Partners",style: TextStyle(color: Colors.white),),
            ),ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text("Contact Us",style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
