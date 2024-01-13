import 'package:flutter/material.dart';
import 'package:maharah_project/widgets/Taken.dart';

class home_botum_section extends StatelessWidget {
  const home_botum_section({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin:
              EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 20),
          child: Row(
            children: [
              Text(
                "Most Taken",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height / 45),
              ),
              Spacer(),
              Text("See all",
                  style: TextStyle(
                      color: Color(0xff1F8CFF),
                      fontSize: MediaQuery.of(context).size.height / 55))
            ],
          ),
        ),
        Taken(
            image: AssetImage("assets/images/cl1.png"),
            description: "UI/UX Visual Design"),
        Taken(
            image: AssetImage("assets/images/cl2.png"),
            description: "Photograpphy Basics - 101"),
        Taken(
            image: AssetImage("assets/images/cl3.png"),
            description: "Basics of logecal thinking"),
        Taken(
            image: AssetImage("assets/images/css1.png"),
            description: "chat with the\nSmartest Ai now"),
        Taken(
            image: AssetImage("assets/images/html1.png"),
            description: "HTML welcome from"),
      ],
    );
  }
}
