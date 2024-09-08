
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/user_controller.dart';

@RoutePage(
  deferredLoading: true,
)
class LoginPage extends ConsumerWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xfff7f3eb),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
      
              children: [
                const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'GOVIND',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25,
                        color: Color(0xff2f585a),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      '- MARKET -',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25,
                        color: Color(0xff2f585a),
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                Spacer(),

                const Text(
                  "Welcome back, you've been missed!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                      color: Color(0xff5E8688),
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 15,),
                TextField(
                  onChanged: (value) {
                    ref.read(emailProvider.notifier).state = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      fontSize: 13,
                      color: Color(0xff5E8688),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(0xff5E8688)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(0xff5E8688)),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(0xff5E8688)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(0xff2f585a), width: 2),
                    ),
                    contentPadding: EdgeInsets.all(5),
                    suffixIcon: Icon(Icons.email, color: Color(0xff2f585a),),
                    filled: true,
                    fillColor: Colors.white,
                    prefix: SizedBox(width: 10,),
                  ),
                ),
                SizedBox(height: 15,),
                TextField(
                  onChanged: (value) {
                    ref.read(passwordProvider.notifier).state = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      fontSize: 13,
                      color: Color(0xff5E8688),
                    ),
                    prefix: SizedBox(width: 10,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(0xff5E8688)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(0xff5E8688)),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(0xff5E8688)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(0xff2f585a), width: 2),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(5),
                    suffixIcon: Icon(Icons.remove_red_eye, color: Color(0xff2f585a),),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Don't have an account ?",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          color: Color(0xff5E8688),
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(width: 15,),
                    GestureDetector(
                      onTap: ()=> context.router.replaceNamed('/signup'),
                      child: const Text(
                        "Create Account",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.orange,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),

                Spacer(),
      
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: Expanded(
                    flex: 1,
                    child: ElevatedButton(
                        onPressed: () async {
                          try {
                            final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                              email: ref.read(emailProvider.notifier).state ?? '',
                              password: ref.read(passwordProvider.notifier).state ?? '',
                            );
                            // credential.credential.accessToken;
                            debugPrint("Logged In");
                          } on FirebaseAuthException catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.message ?? 'An error occurred' )));
                            if (e.code == 'weak-password') {
                              print('The password provided is too weak.');
                            } else if (e.code == 'email-already-in-use') {
                              print('The account already exists for that email.');
                            }
                          } catch (e) {
                            print(e);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        )
                    ),
                  ),
                ),

              ],
            ),
          )
        )
      ),
    );
  }
}
