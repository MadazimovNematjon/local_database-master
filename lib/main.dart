import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:local_database/pages/account_signIn.dart';
import 'package:local_database/pages/account_signUp.dart';
import 'package:local_database/pages/sign_in.dart';
import 'package:local_database/pages/sign_up.dart';
import 'package:get_storage/get_storage.dart';

void main() async{

  await Hive.initFlutter();
  await Hive.openBox('local_Database');

  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SingUp(),
      routes: {
        SignIn.id : (context) => const SignIn(),
        SingUp.id : (context) => const SingUp()
      },
    );
  }
}
