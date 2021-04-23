import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iiit_skeleton/models/constants.dart';
import 'package:iiit_skeleton/screens/Faculty.dart';
import 'package:iiit_skeleton/screens/attendance_page.dart';
import 'package:iiit_skeleton/screens/news.dart';
import 'package:iiit_skeleton/widgets/subjectIcon.dart';
import 'about_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:iiit_skeleton/widgets/slider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text('IIIT SONEPAT'),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('About'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutPage(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text('Attendance'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AttendancePage(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text('Faculty'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FacultyPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/backs1.gif"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.transparent.withOpacity(0.3), BlendMode.srcOver),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(Icons.sort),
                        onPressed: () {
                          _scaffoldKey.currentState.openDrawer();
                        }),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 2.0,
                        ),
                        Stack(
                          children: [
                            Text(
                              "Welcome,",
                              style: TextStyle(
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 4
                                  ..color = Colors.black,
                                fontSize: 20.0,
                                fontFamily: 'Ubuntu',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Text(
                              "Welcome,",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontFamily: 'Ubuntu',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        Stack(children: [
                          Text(
                            "Aditya Chaudhary",
                            style: TextStyle(
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 4
                                ..color = Colors.black,
                              textBaseline: TextBaseline.alphabetic,
                              fontSize: 25.0,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            "Aditya Chaudhary",
                            style: TextStyle(
                              color: Colors.white,
                              textBaseline: TextBaseline.alphabetic,
                              fontSize: 25.0,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ]),
                      ],
                    ),
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('images/1.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 4.0,
              ),
              Container(
                height: SizeConfig.blockSizeVertical * 28.0,
                child: Column(
                  children: [
                    SizedBox(
                      height: 2.0,
                    ),
                    CarouselSlider(
                      items: [
                        CarouselChild(
                          address: 'images/b.png',
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LatestNewsPage(),
                              ),
                            );
                          },
                        ),
                        CarouselChild(
                          address: 'images/c.png',
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AboutPage(),
                              ),
                            );
                          },
                        ),
                        CarouselChild(
                          address: 'images/d.jpg',
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FacultyPage(),
                              ),
                            );
                          },
                        ),
                      ],
                      options: CarouselOptions(
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2),
                        enlargeCenterPage: true,
                        height: SizeConfig.blockSizeVertical * 27.0,
                        aspectRatio: 16 / 9,
                        enableInfiniteScroll: true,
                        viewportFraction: 0.8,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 3.9,
              ),
              Container(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Text(
                      'My Subjects',
                      style: TextStyle(
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 4
                          ..color = Colors.black,
                        fontSize: SizeConfig.blockSizeVertical * 3.0,
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'My Subjects',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.blockSizeVertical * 3.0,
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 2.5,
              ),
              Container(
                height: SizeConfig.blockSizeVertical * 43.0,
                child: GridView.count(
                  primary: false,
                  childAspectRatio: width / (height / 2),
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  children: <Widget>[
                    Subject(
                      address: 'images/m.png',
                      subjectName: 'Mathematics',
                    ),
                    Subject(
                      address: 'images/wd.png',
                      subjectName: 'Web Designing',
                    ),
                    Subject(
                      address: 'images/cs.png',
                      subjectName: 'Communication Skills',
                    ),
                    Subject(
                      address: 'images/ds.png',
                      subjectName: 'Data Structure',
                    ),
                    Subject(
                      address: 'images/de.png',
                      subjectName: 'Digital Electronics',
                    ),
                    Subject(
                      address: 'images/ad.png',
                      subjectName: 'Application Programming',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
