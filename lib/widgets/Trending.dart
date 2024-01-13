import 'package:flutter/material.dart';

class trending extends StatelessWidget {
  const trending({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
          child: Stack(
            children: [
              Image.asset(
                "assets/images/cl1.png",
                width: MediaQuery.of(context).size.width / 6,
                height: MediaQuery.of(context).size.height / 6,
              ),
            ],
          ),
        ));
  }
}
