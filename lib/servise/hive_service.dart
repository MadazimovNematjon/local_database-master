import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

import '../model/user.dart';

class HiveService{

  static var box = Hive.box("local_database");

  static void storeUser(User user){
    box.put('user', user.toJson()); 
  }
  
  static User loadUser(){
    var user = User.fromJson(box.get('user'));
    
    return user;
  }
  
  static removeUser() async{
    box.delete('user');
  }
}