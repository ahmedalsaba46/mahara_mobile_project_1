import 'package:flutter/material.dart';

class Taken extends StatelessWidget {
  const Taken({super.key, required this.image, required this.description});

  final AssetImage image;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.width / 35),
      child: Row(
        children: [
          Container(
            margin:
                EdgeInsets.only(right: MediaQuery.of(context).size.width / 10),
            height: MediaQuery.of(context).size.height / 12,
            width: MediaQuery.of(context).size.width / 4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: image, fit: BoxFit.fill)),
          ),
          Text(description)
        ],
      ),
    );
  }
}
