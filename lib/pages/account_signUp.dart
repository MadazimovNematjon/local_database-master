import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:local_database/model/account.dart';
import 'package:local_database/servise/gs_service.dart';

import '../model/user.dart';
import '../servise/hive_service.dart';

class AccountSignUp extends StatefulWidget {
  const AccountSignUp({Key? key}) : super(key: key);

  @override
  State<AccountSignUp> createState() => _AccountSignUpState();
}

class _AccountSignUpState extends State<AccountSignUp> {
  TextEditingController email = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController address = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    var account = Account('gmail.com', '994091938', 'Chilonzor');

    GSService.storeAccount(account);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00806C),
      body: Column(
        children: [
          //avatar
          Container(
            margin: const EdgeInsets.only(
                top: 70, left: 35, bottom: 20, right: 235),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
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
                  "Sign Up",
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
              padding: const EdgeInsets.only(left: 40, right: 40, top: 60),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Email",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    TextField(
                      controller: email,
                      decoration: const InputDecoration(
                        hintText: 'Enter Email',
                        hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    const Text(
                      "Number",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    TextField(
                      controller: number,
                      decoration: const InputDecoration(
                        hintText: 'Enter Number',
                        hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    const Text(
                      "Address",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: address,
                      decoration: const InputDecoration(
                        hintText: 'Enter Address',
                        hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    const Center(
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    //SignUp button
                    GestureDetector(
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: const Color(0xFF00806C),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    //OR
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 2,
                            width: double.infinity,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "OR",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            height: 2,
                            width: double.infinity,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 30,
                    ),


                    //Icons

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          EvaIcons.facebook,
                          color: Colors.indigo,
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        const Icon(
                          EvaIcons.twitter,
                          color: Colors.blueAccent,
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        const Icon(
                          EvaIcons.google,
                          color: Colors.red,
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 50,
                    ),


                    //Don't have an account?
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Sign In",
                              style: TextStyle(
                                  color: Color(0xFF00806C), fontSize: 16),
                            ))
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
    ;
  }
}
