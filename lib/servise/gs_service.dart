import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:local_database/model/account.dart';


class GSService{
  static var box = GetStorage();

  static storeAccount(Account account){
    box.write('account', account);
  }


  static Future<Account?> loadAccount() async{

    String? account = box.read('account');

    if(account == null || account.isEmpty) return null;

    Map<String, dynamic> map =jsonDecode(account);
    return Account.fromJson(map);



  }

  static removeAccount(){
    box.remove('account');
  }
}