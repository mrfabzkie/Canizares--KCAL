import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kcal/home_screen/rpage.dart';
import 'package:kcal/widgets/slides_dot.dart';
import '../model/slide.dart';
import 'package:kcal/splash.dart';
import '../widgets/slide_item.dart';
import '../home_screen/fpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'kcal Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentPage = 0;

  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(_currentPage,
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                "kcal",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple[400]),
              ),
            ),
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: <Widget>[
                  PageView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: _pageController,
                    onPageChanged: _onPageChanged,
                    itemCount: slideList.length,
                    itemBuilder: (ctx, i) => SlideItem(i),
                  ),
                  Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(bottom: 35),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            for (int i = 0; i < slideList.length; i++)
                              if (i == _currentPage)
                                SlideDots(true)
                              else
                                SlideDots(false)
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                FlatButton(
                  child: Text(
                    'Getting Started',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.all(15),
                  color: Colors.pinkAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homepage()));
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Already Have an Account?',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffFE9286),
          title: const Text("Favorites", style: TextStyle(color: Colors.white)),
          automaticallyImplyLeading: false,
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.green.shade400,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: 'Food'),
              Tab(text: 'Recipe'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Fpage(),
            Rpage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text(''),
                  backgroundColor: Color(0xffFE9286)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text(''),
                  backgroundColor: Color(0xffFE9286)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  title: Text(''),
                  backgroundColor: Color(0xffFE9286)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text(''),
                  backgroundColor: Color(0xffFE9286)),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            }),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            hoverElevation: 10,
            splashColor: Colors.grey,
            tooltip: 'Camera',
            elevation: 4,
            backgroundColor: Color(0xffFE9286),
            child: Icon(Icons.camera_alt_outlined),
            onPressed: () => setState(() {
              _currentIndex = 2;
            }),
          ),
        ),
      ),
    ));
  }
}
