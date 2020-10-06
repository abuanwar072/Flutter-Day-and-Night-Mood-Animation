import 'package:animation/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'land.dart';
import 'rounded_text_field.dart';
import 'tabs.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    List<Color> lightBgColors = [
      Color(0xFF8C2480),
      Color(0xFFCE587D),
      Color(0xFFFF9485),
    ];

    return Container(
      width: double.infinity,
      height: SizeConfig.screenHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: getProportionateScreenWidth(30),
            bottom: getProportionateScreenWidth(-45),
            child: SvgPicture.asset("assets/icons/Sun.svg"),
          ),
          Land(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VerticalSpacing(of: 50),
                  Tabs(
                    press: (value) {},
                  ),
                  VerticalSpacing(),
                  Text(
                    "Good Morning",
                    style: Theme.of(context).textTheme.headline3.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  VerticalSpacing(of: 10),
                  Text(
                    "Enter your Informations below",
                    style: TextStyle(color: Colors.white),
                  ),
                  VerticalSpacing(of: 50),
                  RoundedTextField(
                    initialValue: "ourdemo@email.com",
                    hintText: "Email",
                  ),
                  VerticalSpacing(),
                  RoundedTextField(
                    initialValue: "XXXXXXX",
                    hintText: "Password",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
