import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'main.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFFf5f6fb),
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              child: Stack(
                  children: <Widget>[
                    Image.asset('assets/Topbar.png', width: MediaQuery.of(context).size.width,),
                    SafeArea(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 18, left: 24, right: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            /// Settings
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('/settings');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                    color: ThemeColors.LightGrey,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xFFECEFF1),
                                          blurRadius: 6,
                                          offset: Offset(0, 4))
                                    ]),
                                child: Material(
                                  color: Color(0xFFECEFF1),
                                  elevation: 0,
                                  borderRadius: BorderRadius.circular(100),
                                  child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Icon(
                                        FontAwesomeIcons.slidersH,
                                        color: ThemeColors.LightGrey,
                                      )),
                                ),
                              ),
                            ),

                            SizedBox(width: 16),

                            Text(
                              'Demeter',
                              style: TextStyle(
                                  fontSize: 26,
                                  fontFamily: 'Montserrat',
                                  color: ThemeColors.DarkGrey),
                            ),

                            Expanded(
                              child: SizedBox(),
                            ),

                            Text(
                              '152 x',
                              style: TextStyle(
                                  fontSize: 26,
                                  fontFamily: 'Montserrat',
                                  color: ThemeColors.DarkGrey),
                            ),
                            SizedBox(width: 12,),

                            /// Geficoins
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x3007ff00),
                                          blurRadius: 6,
                                          offset: Offset(0, 4))
                                    ]),
                                child: Image.asset('assets/Geficoins.png', width: 36,)),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(children: <Widget>[
                  Text(
                    "Today's deals",
                    style: TextStyle(
                        fontSize: 28,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w900,
                        color: ThemeColors.DarkGrey),
                  ),
                  Expanded(child: SizedBox()),
                  GestureDetector(
                    ///todo ADD THE DISCOUNT FULL MENU
                    onTap: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w900,
                          color: ThemeColors.DarkGrey),
                    ),
                  )
                ],),
              ),

              Stack(
                alignment: Alignment.centerRight,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    height: 144,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SizedBox(width: 32,),

                        ///
                        Column(
                          children: <Widget>[
                            Container(
                              width: 126,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        Color(0xFF72f971),
                                        Color(0xFF56ee54),
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0x3000ff09),
                                        blurRadius: 8,
                                        offset: Offset(0, 8))
                                  ],
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8),
                                  child: Image.asset('assets/items/Orange.png', width: 100, height: 84,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 9),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "Orange",
                                        style: TextStyle(shadows: [Shadow(color: Color(0x35000000), blurRadius: 2, offset: Offset(0, 1))],
                                            fontSize: 12,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white),
                                      ),
                                      Expanded(child: SizedBox()),
                                      Text(
                                        "0.",
                                        style: TextStyle(shadows: [Shadow(color: Color(0x35000000), blurRadius: 4, offset: Offset(0, 2))],
                                            fontSize: 22,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "3 €",
                                        style: TextStyle(shadows: [Shadow(color: Color(0x35000000), blurRadius: 4, offset: Offset(0, 2))],
                                            fontSize: 14,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white),
                                      ),
                                    ],),
                                ),
                                SizedBox(height: 2,)
                              ],),
                            ),
                          ],
                        ),

                        SizedBox(width: 28,),
                        ///
                        Column(
                          children: <Widget>[
                            Container(
                              width: 126,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        Color(0xFFff9e50),
                                        Color(0xFFff793c),
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0x30ff6b00),
                                        blurRadius: 8,
                                        offset: Offset(0, 8))
                                  ],
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(children: <Widget>[
                                Image.asset('assets/items/Ramen.png', width: 100, height: 100,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 9),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "Ramen",
                                        style: TextStyle(shadows: [Shadow(color: Color(0x35000000), blurRadius: 2, offset: Offset(0, 1))],
                                            fontSize: 12,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white),
                                      ),
                                      Expanded(child: SizedBox()),
                                      Text(
                                        "2",
                                        style: TextStyle(shadows: [Shadow(color: Color(0x35000000), blurRadius: 4, offset: Offset(0, 2))],
                                            fontSize: 22,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        " €",
                                        style: TextStyle(shadows: [Shadow(color: Color(0x35000000), blurRadius: 4, offset: Offset(0, 2))],
                                            fontSize: 14,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white),
                                      ),
                                    ],),
                                ),
                                SizedBox(height: 2,)
                              ],),
                            ),
                          ],
                        ),

                        SizedBox(width: 28,),
                        ///
                        Column(
                          children: <Widget>[
                            Container(
                              width: 126,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        Color(0xFFa5a0f9),
                                        Color(0xFF7e79ed),
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0x30a4a0f9),
                                        blurRadius: 8,
                                        offset: Offset(0, 8))
                                  ],
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(children: <Widget>[
                                Image.asset('assets/items/Beef.png', width: 100, height: 100,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 9),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "Beef",
                                        style: TextStyle(shadows: [Shadow(color: Color(0x35000000), blurRadius: 2, offset: Offset(0, 1))],
                                            fontSize: 12,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white),
                                      ),
                                      Expanded(child: SizedBox()),
                                      Text(
                                        "6",
                                        style: TextStyle(shadows: [Shadow(color: Color(0x35000000), blurRadius: 4, offset: Offset(0, 2))],
                                            fontSize: 22,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        " €",
                                        style: TextStyle(shadows: [Shadow(color: Color(0x35000000), blurRadius: 4, offset: Offset(0, 2))],
                                            fontSize: 14,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white),
                                      ),
                                    ],),
                                ),
                                SizedBox(height: 2,)
                              ],),
                            ),
                          ],
                        ),

                        SizedBox(width: 28,),
                        ///

                        GestureDetector(
                          onTap: () {Navigator.of(context).pushReplacementNamed('/Product');},
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: 126,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xFF72f971),
                                          Color(0xFF56ee54),
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x3000ff09),
                                          blurRadius: 8,
                                          offset: Offset(0, 8))
                                    ],
                                    borderRadius: BorderRadius.circular(12)),
                                child: Column(children: <Widget>[
                                  Image.asset('assets/items/Banana.png', width: 100, height: 100,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 9),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "Banana",
                                          style: TextStyle(shadows: [Shadow(color: Color(0x35000000), blurRadius: 2, offset: Offset(0, 1))],
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white),
                                        ),
                                        Expanded(child: SizedBox()),
                                        Text(
                                          "0.",
                                          style: TextStyle(shadows: [Shadow(color: Color(0x35000000), blurRadius: 4, offset: Offset(0, 2))],
                                              fontSize: 22,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "85 €",
                                          style: TextStyle(shadows: [Shadow(color: Color(0x35000000), blurRadius: 4, offset: Offset(0, 2))],
                                              fontSize: 14,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white),
                                        ),
                                      ],),
                                  ),
                                  SizedBox(height: 2,)
                                ],),
                              ),

                            ],
                          ),
                        ),
                        SizedBox(width: 28,),
                        ///
                        Column(
                          children: <Widget>[
                            Container(
                              width: 126,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        Color(0xFFa5a0f9),
                                        Color(0xFF7e79ed),
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0x30a4a0f9),
                                        blurRadius: 8,
                                        offset: Offset(0, 8))
                                  ],
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(children: <Widget>[
                                Image.asset('assets/items/Salmon.png', width: 100, height: 100,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 9),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "Salmon",
                                        style: TextStyle(shadows: [Shadow(color: Color(0x35000000), blurRadius: 2, offset: Offset(0, 1))],
                                            fontSize: 12,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white),
                                      ),
                                      Expanded(child: SizedBox()),
                                      Text(
                                        "12",
                                        style: TextStyle(shadows: [Shadow(color: Color(0x35000000), blurRadius: 4, offset: Offset(0, 2))],
                                            fontSize: 22,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        " €",
                                        style: TextStyle(shadows: [Shadow(color: Color(0x35000000), blurRadius: 4, offset: Offset(0, 2))],
                                            fontSize: 14,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white),
                                      ),
                                    ],),
                                ),
                                SizedBox(height: 2,)
                              ],),
                            ),

                          ],
                        ),

                        SizedBox(width: 90,)

                      ],
                    ),
                  ),

                  Container(
                    width: 120, height: 160,
                    decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0x00f5f6fb), Color(0xFFf5f6fb)])),),
                ],
              ),

///-----------------------------------------------------------------------------------------

              Image.asset('assets/Line.png', width: MediaQuery.of(context).size.width,),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(children: <Widget>[
                  Text(
                    "Your favorites",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w900,
                        color: ThemeColors.DarkGrey),
                  ),
                  Expanded(child: SizedBox()),
                  GestureDetector(
                    ///todo ADD THE DISCOUNT FULL MENU
                    onTap: () {

                    },
                    child: Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w900,
                          color: ThemeColors.DarkGrey),
                    ),
                  )
                ],),
              ),

              Stack(
                alignment: Alignment.centerRight,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    height: 144,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SizedBox(width: 32,),

                        ///
                        Column(
                          children: <Widget>[
                            Stack(alignment: Alignment.topCenter,
                              children: <Widget>[
                                Column(children: <Widget>[
                                  SizedBox(height: 40,),
                                  Container(
                                    width: 126,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color(0x20000000),
                                              blurRadius: 8,
                                              offset: Offset(0, 8))
                                        ],
                                        borderRadius: BorderRadius.circular(12)),
                                    child: Column(children: <Widget>[
                                      SizedBox(height: 48,),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10),
                                        child: Row(
                                          children: <Widget>[
                                            Text(
                                              "Ocean's tuna",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w900,
                                                  color: ThemeColors.DarkGrey),
                                            ),
                                            Expanded(child: SizedBox()),
                                            Text(
                                              "11",
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w900,
                                                  color: ThemeColors.DarkGrey),
                                            ),
                                            Text(
                                              "€",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w900,
                                                  color: ThemeColors.DarkGrey),
                                            ),
                                          ],),
                                      )
                                    ],),
                                  ),
                                ],),
                                Image.asset('assets/items/Tuna.png', width: 92, height: 92,),
                              ],)
                          ],
                        ),

                        SizedBox(width: 28,),
                        ///
                        Stack(alignment: Alignment.topCenter,
                          children: <Widget>[
                            Column(children: <Widget>[
                              SizedBox(height: 40,),
                              Container(
                                width: 126,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x20000000),
                                          blurRadius: 8,
                                          offset: Offset(0, 8))
                                    ],
                                    borderRadius: BorderRadius.circular(12)),
                                child: Column(children: <Widget>[
                                  SizedBox(height: 48,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "Oatly choco",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w900,
                                              color: ThemeColors.DarkGrey),
                                        ),
                                        Expanded(child: SizedBox()),
                                        Text(
                                          "2",
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w900,
                                              color: ThemeColors.DarkGrey),
                                        ),
                                        Text(
                                          "€",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w900,
                                              color: ThemeColors.DarkGrey),
                                        ),
                                      ],),
                                  )
                                ],),
                              ),
                            ],),
                            Image.asset('assets/items/Oatly.png', width: 92, height: 92,),
                          ],),

                        SizedBox(width: 28,),
                        ///
                        Stack(alignment: Alignment.topCenter,
                          children: <Widget>[
                            Column(children: <Widget>[
                              SizedBox(height: 40,),
                              Container(
                                width: 126,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x20000000),
                                          blurRadius: 8,
                                          offset: Offset(0, 8))
                                    ],
                                    borderRadius: BorderRadius.circular(12)),
                                child: Column(children: <Widget>[
                                  SizedBox(height: 48,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "Maggi soy",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w900,
                                              color: ThemeColors.DarkGrey),
                                        ),
                                        Expanded(child: SizedBox()),
                                        Text(
                                          "7",
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w900,
                                              color: ThemeColors.DarkGrey),
                                        ),
                                        Text(
                                          "€",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w900,
                                              color: ThemeColors.DarkGrey),
                                        ),
                                      ],),
                                  )
                                ],),
                              ),
                            ],),
                            Image.asset('assets/items/Soy.png', width: 92, height: 92,),
                          ],),
                        SizedBox(width: 28,),
                        ///
                        Stack(alignment: Alignment.topCenter,
                          children: <Widget>[
                            Column(children: <Widget>[
                              SizedBox(height: 40,),
                              Container(
                                width: 126,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x20000000),
                                          blurRadius: 8,
                                          offset: Offset(0, 8))
                                    ],
                                    borderRadius: BorderRadius.circular(12)),
                                child: Column(children: <Widget>[
                                  SizedBox(height: 48,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "Ramen",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w900,
                                              color: ThemeColors.DarkGrey),
                                        ),
                                        Expanded(child: SizedBox()),
                                        Text(
                                          "2",
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w900,
                                              color: ThemeColors.DarkGrey),
                                        ),
                                        Text(
                                          "€",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w900,
                                              color: ThemeColors.DarkGrey),
                                        ),
                                      ],),
                                  )
                                ],),
                              ),
                            ],),
                            Image.asset('assets/items/Ramen.png', width: 100, height: 100,),
                          ],),

                        SizedBox(width: 90,)

                      ],
                    ),
                  ),

                  Container(
                    width: 120, height: 160,
                    decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0x00f5f6fb), Color(0xFFf5f6fb)])),),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(children: <Widget>[
                  Text(
                    "New Arrivals!",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w900,
                        color: ThemeColors.DarkGrey),
                  ),
                  Expanded(child: SizedBox()),
                  GestureDetector(
                    ///todo ADD THE DISCOUNT FULL MENU
                    onTap: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w900,
                          color: ThemeColors.DarkGrey),
                    ),
                  )
                ],),
              ),



              /*Container(
                  height: 280,
                  child: FlareActor("assets/Anim.flr",
                      alignment: Alignment.center,
                      fit: BoxFit.contain,
                      animation: "idle")),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/Call');
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Colors.white,
                      boxShadow: [
                        new BoxShadow(
                            color: ShadowColors.RedShadow,
                            blurRadius: 6,
                            offset: Offset(0, 4)),
                      ]),
                  child: Material(
                    color: ThemeColors.mainRed,
                    elevation: 0,
                    borderRadius: BorderRadius.circular(100),
                    child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                            height: 50,
                            width: 50,
                            child: Image.asset('assets/logo.png'))),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
                width: 0,
              ),
              Text(
                'Look for a kindred spirit',
                style: TextStyle(
                    color: ThemeColors.DarkGrey,
                    fontFamily: 'Raleway',
                    fontSize: 18),
              ),
              SizedBox(
                height: 4,
                width: 0,
              ),
              Text(
                'from all around the globe!',
                style: TextStyle(
                    color: ThemeColors.DarkGrey,
                    fontFamily: 'Montserrat',
                    fontSize: 14),
              ),*/
            ],
          ),
          ///
          /*Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 68, vertical: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    /// messagerie button
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          color: Colors.white,
                          boxShadow: [
                            new BoxShadow(
                                color: ShadowColors.BlueShadow,
                                blurRadius: 6,
                                offset: Offset(0, 4)),
                          ]),
                      child: Material(
                        color: Colors.white,
                        elevation: 0,
                        borderRadius: BorderRadius.circular(100),
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Image.asset(
                              'assets/msg.png',
                              height: 26,
                            )),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),

                    ///contacts button
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          color: Colors.white,
                          boxShadow: [
                            new BoxShadow(
                                color: ShadowColors.YellowShadow,
                                blurRadius: 6,
                                offset: Offset(0, 4)),
                          ]),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/Profile');
                        },
                        child: Material(
                          color: Colors.white,
                          elevation: 0,
                          borderRadius: BorderRadius.circular(100),
                          child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Image.asset(
                                'assets/frnds.png',
                                height: 26,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )*/
        ],
      ),
    );
  }
}
