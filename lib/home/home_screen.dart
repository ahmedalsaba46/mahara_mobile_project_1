import 'package:flutter/material.dart';
import 'package:maharah_project/home/home_botum_section.dart';
import 'package:maharah_project/home/home_header.dart';
import 'package:maharah_project/widgets/Trending.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.shopping_cart_outlined, color: Colors.white),
        shape: CircleBorder(),
        backgroundColor: Colors.blue[300],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: home_header_section(),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 3.5,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: trending(
                      bigImage: AssetImage("assets/images/cl1.png"),
                      smallImage: AssetImage("assets/images/css.png"),
                      description: "chat with the\nSmartest Ai now"),
                ),
                trending(
                    bigImage: AssetImage("assets/images/cl2.png"),
                    smallImage: AssetImage("assets/images/html.png"),
                    description: "HTML welcome from"),
                trending(
                    bigImage: AssetImage("assets/images/cl3.png"),
                    smallImage: AssetImage("assets/images/css1.png"),
                    description: "draw me"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: home_botum_section(),
          )
        ],
      )),
    );
  }
}
