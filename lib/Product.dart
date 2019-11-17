import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'main.dart';

class Product extends StatefulWidget {
  Product({Key key, this.title}) : super(key: key);

  final String title;
  @override
  State createState() => new ProductState();
}

class ProductState extends State<Product> {
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
          Stack(
            children: <Widget>[
              Image.asset('assets/Background.png', width: MediaQuery.of(context).size.width,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(children: <Widget>[
                      Text(
                        "Bananas",
                        style: TextStyle(
                            fontSize: 28,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w900,
                            color: ThemeColors.DarkGrey),
                      ),
                      Expanded(child: SizedBox()),
                    ],),
                  ),
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(children: <Widget>[
                      Text(
                        "The banana is a lengthy yellow fruit,",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w900,
                            color: ThemeColors.DarkGrey),
                      ),
                      Expanded(child: SizedBox()),
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(children: <Widget>[
                      Text(
                        "found in the market in groups of three",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w900,
                            color: ThemeColors.DarkGrey),
                      ),
                      Expanded(child: SizedBox()),
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(children: <Widget>[
                      Text(
                        "to twenty fruits, similar to a triangular",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w900,
                            color: ThemeColors.DarkGrey),
                      ),
                      Expanded(child: SizedBox()),
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(children: <Widget>[
                      Text(
                        "cucumber, oblong and normally yellow.",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w900,
                            color: ThemeColors.DarkGrey),
                      ),
                      Expanded(child: SizedBox()),
                    ],),
                  ),
                  SizedBox(height: 48,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                      Text(
                        "0.",
                        style: TextStyle(shadows: [Shadow(color: Color(0x35000000), blurRadius: 4, offset: Offset(0, 2))],
                            fontSize: 48,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w900,
                            color: Colors.black87),
                      ),
                      Text(
                        "85 €",
                        style: TextStyle(shadows: [Shadow(color: Color(0x35000000), blurRadius: 4, offset: Offset(0, 2))],
                            fontSize: 24,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w900,
                            color: Colors.black87),
                      ),
                    ],),
                  ),
                  SizedBox(height: 12,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      width: 120,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(8),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFf63a49),
                            Color(0xFFf61546),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: ShadowColors.RedShadow,
                              blurRadius: 6,
                              offset: Offset(0, 4))
                        ],
                      ),
                      child: FlatButton(
                          materialTapTargetSize:
                          MaterialTapTargetSize
                              .shrinkWrap,
                          onPressed: (){
                          },
                          child: Text(
                            "BUY",
                            style: new TextStyle(
                                color: Colors.white,
                                fontFamily: 'Oxygen',
                                fontSize: 16),
                          )),
                    ),
                  ),
                  SizedBox(height: 24,),

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

                ],
              ),
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
