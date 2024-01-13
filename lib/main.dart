import 'package:flutter/material.dart';
import 'package:maharah_project/home/home_screen.dart';
import 'package:maharah_project/user_profile/user_profile_screen.dart';

class route extends StatelessWidget {
  const route({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => home_screen(),
        "/user_profile": (context) => UserProfileScreen()
      },
    );
  }
}

void main() {
  runApp(route());
}
