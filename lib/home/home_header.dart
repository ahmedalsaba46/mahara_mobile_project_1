import 'package:flutter/material.dart';

class home_header_section extends StatelessWidget {
  const home_header_section({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Column(children: [
        Container(
          margin:
              EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 15),
          child: Row(
            children: [
              Text(
                "Hello,\nAbdalraheem",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 30,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/user_profile");
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Color(0xffFFCA00),
                      borderRadius: BorderRadius.circular(30)),
                  child: Image.asset(
                    "assets/images/user_profile_image.png",
                    width: 30,
                    height: 30,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Text(
                "Trending",
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
      ]),
    );
  }
}
