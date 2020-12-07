import 'package:flutter/material.dart';
import 'package:foody/constants.dart';

class FoodCart extends StatelessWidget {
  final String title;
  final String ingredient;
  final String image;
  final int price;
  final String calories;
  final String description;
  final Function press;

  const FoodCart(
      {Key key,
      this.title,
      this.ingredient,
      this.image,
      this.price,
      this.calories,
      this.description,
      this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 20.0),
        height: 320,
        width: 270,
        child: Stack(
          children: <Widget>[
            // big light background
            Positioned(
              top: 20,
              left: 20,
              right: 40,
              bottom: 40,
              child: Container(
                height: 310,
                width: 290,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kPrimarycolor.withOpacity(0.10),
                ),
              ),
            ),
            //round background
            Positioned(
              left: 5,
              right: 110,
              child: Container(
                height: 131,
                width: 131,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimarycolor.withOpacity(0.15),
                ),
              ),
            ),
            //round image
            Positioned(
              top: -5,
              left: -50,
              child: Container(
                height: 134,
                width: 240,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
            //price....
            Positioned(
              right: 70,
              top: 50,
              child: Text(
                "\$$price",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: kPrimarycolor),
              ),
            ),
            Positioned(
              top: 140,
              left: 40,
              child: Container(
                width: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,

                      // ignore: deprecated_member_use
                      style: Theme.of(context).textTheme.title,
                    ),
                    Text(
                      "With $ingredient",
                      style: TextStyle(
                        color: kTextcolor.withOpacity(0.4),
                      ),
                    ),
                    Text(
                      description,
                      maxLines: 4,
                      style: TextStyle(
                        color: kTextcolor.withOpacity(.65),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(calories)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
