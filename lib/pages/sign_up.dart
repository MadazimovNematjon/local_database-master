import 'package:flutter/material.dart';
import 'package:local_database/pages/sign_in.dart';

class SingUp extends StatefulWidget {
  static String get id => 'sign_Up';
  const SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {

  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //070B23FF
      backgroundColor: const Color(0xFF081933),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const SizedBox(height: 100,),
              const Text(
                "Create",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
              const Text(
                "Account",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 50,
              ),
              //#TextFild email end password
              Container(
                margin: const EdgeInsets.only(left: 30,right: 30,bottom: 25),
                child:  Center(
                  child: TextField(
                    controller: userName,
                    decoration: const InputDecoration(
                      hintText: 'User Name',
                      hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                      prefixIcon: Icon(Icons.account_circle_outlined,color: Colors.white,),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30,right: 30,bottom: 10),
                child: Center(
                  child: TextField(
                    controller: email,
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                      prefixIcon: Icon(Icons.email_outlined,color: Colors.white,),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30,right: 30,bottom: 25),
                child:  Center(
                  child: TextField(
                    controller: phone,
                    decoration: const InputDecoration(
                      hintText: 'Phone Number',
                      hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                      prefixIcon: Icon(Icons.phone,color: Colors.white,),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30,right: 30,bottom: 10),
                child:  Center(
                  child: TextField(
                    controller: password,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                      prefixIcon: Icon(Icons.lock_outlined,color: Colors.white,),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40,),

              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end:  Alignment.bottomLeft,
                      colors: [
                        const Color(0xFF0099EC).withOpacity(0.9),
                        const Color(0xFF161AE8).withOpacity(0.7),
                        const Color(0xFF161AE8).withOpacity(0.6),
                        const Color(0xFF161AE8).withOpacity(0.3),
                      ]) ,
                ),
                child: const Center(
                  child: Icon(Icons.arrow_forward_sharp,color: Colors.white,size: 40,),
                ),
              ) ,

              const SizedBox(height: 50,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?",style: TextStyle(color: Colors.grey,fontSize: 14), ),
                  const SizedBox(width: 5,),
                  TextButton(onPressed: (){
                    Navigator.pushReplacementNamed(context, SignIn.id);
                  }, child: const Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
