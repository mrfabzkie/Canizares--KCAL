import 'package:flutter/material.dart';
import 'package:kcal/home_screen/CookieScreen.dart';
import 'package:kcal/home_screen/RecipeScreen.dart';
import '../model/recipe.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RecipeItem extends StatelessWidget {
  final int index;
  RecipeItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 16,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: InkWell(
          onTap: () {
            if (RecipeList[index].title == "Pork Liempo") {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RecipeScreen()));
            } else if (RecipeList[index].title == "Utan") {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CookieScreen()));
            }
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Ink.image(
                    height: 200,
                    image: AssetImage(
                      RecipeList[index].imageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: InkWell(
                      child: RatingBar(
                        initialRating: 0,
                        itemSize: 30,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 1,
                        ratingWidget: RatingWidget(
                          full: Icon(Icons.favorite, color: Colors.red),
                          half: Icon(Icons.favorite, color: Colors.red),
                          empty: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                        itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                        onRatingUpdate: (rating) {},
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, top: 16, right: 16, bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.schedule,
                            color: Colors.black,
                            size: 18,
                          ),
                          Text(
                            RecipeList[index].duration,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.people,
                            color: Colors.black,
                            size: 18,
                          ),
                          Text(
                            RecipeList[index].serve,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 40),
                          Container(
                            child: RatingBar(
                              initialRating: 3,
                              itemSize: 20,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              ratingWidget: RatingWidget(
                                full: Icon(Icons.star, color: Colors.yellow),
                                half:
                                    Icon(Icons.star_half, color: Colors.yellow),
                                empty: Icon(Icons.star_border_outlined,
                                    color: Colors.yellow),
                              ),
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 2.0),
                              onRatingUpdate: (rating) {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      RecipeList[index].title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(RecipeList[index].description),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
