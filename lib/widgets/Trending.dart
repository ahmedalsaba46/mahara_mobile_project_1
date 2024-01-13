import 'package:flutter/material.dart';

class trending extends StatelessWidget {
  const trending({
    super.key,
    required this.bigImage,
    required this.smallImage,
    required this.description,
  });

  final AssetImage bigImage;
  final AssetImage smallImage;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 20),
        width: MediaQuery.of(context).size.width / 1.7,
        height: MediaQuery.of(context).size.height / 3.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Color(0xffF5F5F5)),
        child: Stack(
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 8,
                decoration: BoxDecoration(
                    image: DecorationImage(image: bigImage, fit: BoxFit.fill),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)))),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 12, left: 15),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.height / 25,
                backgroundColor: Colors.white,
                child: Image(
                  image: smallImage,
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.height / 15,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 5.5, left: 15),
              child: Text(
                description,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 45,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ));
  }
}
