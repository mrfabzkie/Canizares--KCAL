import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RecipeScreen extends StatefulWidget {
  @override
  _RecipeScreenState createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Recipe", style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: <Widget>[
            Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/liempo.jpg'),
                    fit: BoxFit.cover,
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.35),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
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
                            '1 Hr',
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
                            '5 Serve',
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
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'Pork Liempo',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 170),
                        InkWell(
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
                                color: Colors.grey,
                              ),
                            ),
                            itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                            onRatingUpdate: (rating) {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                        "Inihaw na Liempo is known as Grilled Pork Belly in Filipino. This dish needs no introduction at all because the name of the dish already introduces itself. Inihaw na Liempo is also a popular and favorite dish in the Philippines"),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          "Ingredients",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/oil.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/sauce.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/pepper.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/garlic.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/catsup.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/lemon.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/belly.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Text(
                          "Direction",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                        "Step 1 \n Combine pork belly with the soy sauce, lemon, salt, ground black pepper, garlic and mix well. Marinade the pork belly for at least 3 hours."),
                    SizedBox(height: 20),
                    Text(
                        "Step 2 \n In a bowl, pour the pork belly marinade. Add banana catsup and cooking oil. Stir well. (This will be the basting sauce)"),
                    SizedBox(height: 20),
                    Text(
                        " Step 3 \n Grill the pork belly while basting the top part of the pork after flipping it over."),
                    SizedBox(height: 20),
                    Text(
                        " Step 4 \n Serve hot with spiced vinegar or toyomansi. Share and Enjoy!"),
                    SizedBox(height: 20),
                    FlatButton(
                      child: Center(
                        child: Text(
                          'Add to Favorites',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.all(15),
                      color: Color(0xffFE9286),
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
