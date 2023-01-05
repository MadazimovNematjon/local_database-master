import 'package:flutter/material.dart';
// import 'package:icons_plus/icons_plus.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import '../model/user.dart';
import '../servise/hive_service.dart';

class AccountSignIn extends StatefulWidget {
  const AccountSignIn({Key? key}) : super(key: key);

  @override
  State<AccountSignIn> createState() => _AccountSignInState();
}

class _AccountSignInState extends State<AccountSignIn> {

  TextEditingController email = TextEditingController();
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
      backgroundColor: const Color(0xFF00806C),
      body: Column(
        children: [
          //avatar
          Container(
            margin: const EdgeInsets.only(left: 35, bottom: 20, right: 245),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 80, bottom: 20),
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/image_1.jpg'),
                          fit: BoxFit.cover)),
                ),
                Text(
                  "Welcome",
                  style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              padding: const EdgeInsets.only(left: 40,right: 40,top: 60),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Email",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600),),
                    const SizedBox(height: 10,),
                     TextField(
                      controller: email,
                      decoration: const InputDecoration(
                        hintText: 'Enter Email',
                        hintStyle: TextStyle(fontSize: 12,color: Colors.grey),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Text("Password",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600),),
                    const SizedBox(height: 10,),
                    TextField(
                      controller: password,
                      decoration: const InputDecoration(
                        hintText: 'Enter Password',
                        hintStyle: TextStyle(fontSize: 12,color: Colors.grey),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    const Center(
                      child: Text("Forget Password?",style: TextStyle(color: Colors.grey),),
                    ),
                    const SizedBox(height: 30,),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: const Color(0xFF00806C),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(child: Text('Sign In',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),),
                    ),
                    const SizedBox(height: 20,),
                    Center(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 2,
                              width: double.infinity,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          const Text("OR",style: TextStyle(fontSize: 18,color: Colors.grey),),
                          const SizedBox(width: 10,),
                          Expanded(
                            child: Container(
                              height: 2,
                              width: double.infinity,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(EvaIcons.facebook,color: Colors.indigo,),
                        const SizedBox(width: 50,),
                        const Icon(EvaIcons.twitter,color: Colors.blueAccent,),
                        const SizedBox(width: 50,),
                        const Icon(EvaIcons.google,color: Colors.red,),
                      ],
                    ),

                    const SizedBox(height: 50,),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?",style: TextStyle(color: Colors.grey,fontSize: 16),),
                        TextButton(onPressed: (){}, child: const Text("Sign Up",style: TextStyle(color: Color(0xFF00806C),fontSize: 16),))
                      ],
                    )

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
