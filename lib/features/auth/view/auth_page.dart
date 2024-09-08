import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/user_controller.dart';


@RoutePage(
  deferredLoading: true,
)
class AuthPage extends ConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f3eb),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Spacer(),
              const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'GOVIND',
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 40,
                        color: Color(0xff2f585a),
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    '- MARKET -',
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 40,
                        color: Color(0xff2f585a),
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              Spacer(),
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: (){
                          context.router.pushNamed('/login');
                        },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                          ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins'
                          ),
                        )
                      ),
                    ),
                    SizedBox(width: 13,),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                          onPressed: ()=> context.router.pushNamed('/signup'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )
                          ),
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),

            ],
          ),
        ),
      ),
    );
  }
}
