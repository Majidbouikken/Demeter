import 'package:flutter/material.dart';
import 'main.dart';

class Slides extends StatefulWidget {
  Slides({Key key, this.title}) : super(key: key);
  final String title;
  @override
  State createState() => new SlidesState();
}

class SlidesState extends State<Slides> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
      children: <Widget>[
        PageView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(height: 400, child: Image.asset('assets/s1.png')),
                SizedBox(
                  height: 32,
                  width: 0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    '''Tie up with people from all around the globe!''',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ThemeColors.DarkGrey,
                        fontFamily: 'Raleway',
                        fontSize: 24),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/dot1.png',
                      width: 8,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/dot2.png',
                      width: 8,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/dot2.png',
                      width: 8,
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(height: 400, child: Image.asset('assets/s2.png')),
                SizedBox(
                  height: 32,
                  width: 0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    '''Find your mind twin or just discover new mindsets''',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ThemeColors.DarkGrey,
                        fontFamily: 'Raleway',
                        fontSize: 24),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/dot2.png',
                      width: 8,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/dot1.png',
                      width: 8,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/dot2.png',
                      width: 8,
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(height: 400, child: Image.asset('assets/s3.png')),
                SizedBox(
                  height: 32,
                  width: 0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    '''Start sharpening your skills and sharing them with new friends!''',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ThemeColors.DarkGrey,
                        fontFamily: 'Raleway',
                        fontSize: 24),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/dot2.png',
                      width: 8,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/dot2.png',
                      width: 8,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/dot1.png',
                      width: 8,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
              padding: const EdgeInsets.only(bottom: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 160,
                    height: 44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: ThemeColors.mainRed,
                        boxShadow: [
                          BoxShadow(
                              color: ShadowColors.RedShadow,
                              blurRadius: 6,
                              offset: Offset(0, 4))
                        ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: FlatButton(
                          splashColor: Color(0x75FFDDDD),
                          highlightColor: Colors.transparent,
                          clipBehavior: Clip.hardEdge,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          onPressed: () {
                            Navigator.of(context).pushNamed('/HomePage');
                          },
                          child: Text(
                            "Got it!",
                            style: new TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          )),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 160,
                    height: 44,
                    decoration: BoxDecoration(
                      border: Border.all(color: ThemeColors.mainRed, width: 2),
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: FlatButton(
                          splashColor: Color(0x75FFDDDD),
                          highlightColor: Colors.transparent,
                          clipBehavior: Clip.hardEdge,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          onPressed: () {
                            Navigator.of(context).pushNamed('/HomePage');
                          },
                          child: Text(
                            "Skip",
                            style: new TextStyle(
                                color: ThemeColors.mainRed,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          )),
                    ),
                  ),
                ],
              )),
        ),
      ],
    ));
  }
}
