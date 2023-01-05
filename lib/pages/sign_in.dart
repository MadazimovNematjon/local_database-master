import 'package:flutter/material.dart';
import 'package:local_database/model/user.dart';
import 'package:local_database/pages/sign_up.dart';
import 'package:local_database/servise/hive_service.dart';

class SignIn extends StatefulWidget {
  static String get id => 'sign_in';

  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    var user = User('gmail.com', 'password');

    HiveService.storeUser(user);
  }

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
              
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  image: DecorationImage(image: AssetImage('assets/images/image_1.jpg'),fit: BoxFit.cover)
                ),
              ),
              const SizedBox(height: 20,),
              const Text(
                "Welcome Back!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
              const Text(
                "Sign in to continue",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
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
              //#TextFild email end password
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
              const SizedBox(height: 30,),
              const Text("Forget Password?",style: TextStyle(color: Colors.grey,fontSize: 14),)  ,
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

              const SizedBox(height: 70,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?",style: TextStyle(color: Colors.grey,fontSize: 14), ),
                  const SizedBox(width: 5,),
                  TextButton(onPressed: (){
                    Navigator.pushReplacementNamed(context, SingUp.id);
                  }, child: const Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
