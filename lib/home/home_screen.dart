import 'package:flutter/material.dart';
import 'package:maharah_project/home/home_header.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Scaffold(
        body: home_header_section(),
      ),
    );
  }
}
