import 'package:flutter/material.dart';
import 'package:kcal/home_screen/CookieScreen.dart';
// import 'package:kcal/home_screen/FoodData.dart';

// import 'package:kcal/home_screen/FoodDetails.dart';

class Fpage extends StatefulWidget {
  Fpage({Key? key}) : super(key: key);

  @override
  _FpageState createState() => _FpageState();
}

class _FpageState extends State<Fpage> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: (200 / 50),
            crossAxisSpacing: 20,
            mainAxisSpacing: 10,
            children: [
              Container(
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CookieScreen()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  color: Colors.pink[200],
                  child: new Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Image.asset(
                        'assets/images/cookie.png',
                        height: 40.0,
                        width: 40.0,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: new Text(
                            "Cookie >",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                child: FlatButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  color: Colors.pink[200],
                  child: new Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Image.asset(
                        'assets/images/burger.png',
                        height: 40.0,
                        width: 40.0,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: new Text(
                            "Burger >",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                child: FlatButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  color: Colors.pink[200],
                  child: new Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Image.asset(
                        'assets/images/cupcake.png',
                        height: 40.0,
                        width: 40.0,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: new Text(
                            "Cakes >",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                child: FlatButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  color: Colors.pink[200],
                  child: new Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Image.asset(
                        'assets/images/pizza.png',
                        height: 40.0,
                        width: 40.0,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: new Text(
                            "Pizza >",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                child: FlatButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  color: Colors.pink[200],
                  child: new Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Image.asset(
                        'assets/images/hotdog.png',
                        height: 40.0,
                        width: 40.0,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: new Text(
                            "Hotdog >",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                child: FlatButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  color: Colors.pink[200],
                  child: new Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Image.asset(
                        'assets/images/fries.png',
                        height: 40.0,
                        width: 40.0,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: new Text(
                            "Fries >",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                child: FlatButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  color: Colors.pink[200],
                  child: new Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Image.asset(
                        'assets/images/donut.png',
                        height: 40.0,
                        width: 40.0,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: new Text(
                            "Donuts >",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
