import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foody/Widget/Category_title.dart';
import 'package:foody/Widget/Details_screen.dart';
import 'package:foody/Widget/Food_cart.dart';
import 'package:foody/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foody App',
      theme: ThemeData(
          fontFamily: "poppins",
          scaffoldBackgroundColor: kWhitecolor,
          primaryColor: kPrimarycolor,
          textTheme: TextTheme(
            headline6: TextStyle(fontWeight: FontWeight.bold),
          )),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        height: 50,
        width: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimarycolor.withOpacity(.26),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimarycolor,
          ),
          child: SvgPicture.asset("assets/icons/plus.svg"),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 50),
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                "assets/icons/menu.svg",
                height: 11,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "simple way to finsh \n Testy food",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                CategoryTitle(title: "All", active: true),
                CategoryTitle(title: "Itsalian"),
                CategoryTitle(title: "Asian"),
                CategoryTitle(title: "Chinese"),
                CategoryTitle(title: "Burger "),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kBordercolor),
            ),
            child: SvgPicture.asset("assets/icons/search.svg"),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                FoodCart(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailsScreen();
                      }),
                    );
                  },
                  title: "vegan salad bowl",
                  image: "assets/images/image_1.png",
                  ingredient: "solid",
                  price: 20,
                  calories: "420Kcal",
                  description:
                      "Countrary to popular belief,Lorem Ipsum is not simply random text.",
                ),
                FoodCart(
                  title: "vegan salad bowl",
                  image: "assets/images/image_2.png",
                  price: 70,
                  ingredient: "solid",
                  calories: "420Kcal",
                  description:
                      "Countrary to popular belief,Lorem Ipsum is not simply random text. ",
                ),
                FoodCart(
                  title: "vegan salad bowl",
                  image: "assets/images/image_2.png",
                  price: 50,
                  ingredient: "solid",
                  calories: "420Kcal",
                  description:
                      "Countrary to popular belief,Lorem Ipsum is not simply random text. ",
                ),
                SizedBox(width: 60),
              ],
            ),
          )
        ],
      ),
    );
  }
}
