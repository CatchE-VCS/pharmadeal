import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(
  deferredLoading: true,
)
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(
        seconds: 2,
      ),
      () => context.router.pushNamed('/auth'),
    );
    return const SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xff2f585a),
          body: Center(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'GOVIND',
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '- MARKET -',
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ))),
    );
  }
}
