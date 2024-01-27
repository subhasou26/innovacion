
import 'dart:developer';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:innovacion/dbHelper/constant.dart';

class MongoDatabase{
  static var db,userCollection;
  static connect() async{
    db=await Db.create(MONGO_CONN_URL);
    await db.open();
    inspect(db);
    //final coll=db.collection("subha");
    userCollection= db.collection(USER_COLLECTION);
    print(await userCollection.find().toList());
    var coll = db.collection('find');
    print(coll);
  }

}

