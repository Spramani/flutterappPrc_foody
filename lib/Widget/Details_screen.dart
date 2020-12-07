import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foody/constants.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset(
                  "assets/icons/backward.svg",
                  height: 12,
                ),
                SvgPicture.asset(
                  "assets/icons/menu.svg",
                  height: 12,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.all(6),
              height: 205,
              width: 205,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kSecondarycolor,
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/image_1_big.png"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Vegan salad Bowl\n",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      TextSpan(
                        text: "With Red Tamato",
                        style: TextStyle(color: kTextcolor.withOpacity(0.5)),
                      ),
                    ],
                  ),
                ),
                Text(
                  "\$20",
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: kPrimarycolor),
                )
              ],
            ),
            SizedBox(height: 20),
            Text(
                "adslfkdjfalskdfjalds fjaljf dlasjdf lasjdfl afl kajsfd ;alsdkf las;jf kasldf jkals;fjla;sdf jlasdfk jasd;lf kas;dfj asdlfj a;sl fkasjdf; lasd;alsdkf las;jf kasldf jkals;fjla;sdf jlasdfk jasd;lf kas;dfj asdlfj a;sl fkasjdf; lasd"),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      color: kPrimarycolor.withOpacity(0.21),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Add Bag",
                          style: Theme.of(context).textTheme.button,
                        ),
                        SvgPicture.asset(
                          "assets/icons/forward.svg",
                          height: 11,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPrimarycolor.withOpacity(.25),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(13),
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPrimarycolor,
                          ),
                          child: SvgPicture.asset("assets/icons/bag.svg"),
                        ),
                        Positioned(
                          right: -6,
                          bottom: 2,
                          child: Container(
                            alignment: Alignment.center,
                            height: 17,
                            width: 26,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kWhitecolor,
                            ),
                            child: Text(
                              "0",
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  .copyWith(color: kBlackcolor, fontSize: 12),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
