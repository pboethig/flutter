import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);
  @override
  _LoginState createState() => new _LoginState();
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: HexColor("242424"),
        title: new Text('Anmelden'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(0.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Card(
                child: new Container(
                  padding: new EdgeInsets.all(32.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      new Text(
                        'Anmelden',
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: HexColor("271F07"),
                            fontWeight: FontWeight.w900,
                            fontFamily: "Roboto"),
                      ),
                      new Text('Liebherr AD Account'),
                      new Divider(color: const Color(0x5e5e5e)),
                      new Text('Login'),
                      new TextField(
                        style: new TextStyle(
                            fontSize: 12.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w200,
                            fontFamily: "Roboto"),
                      ),
                      new Divider(color: const Color(0x5e5e5e)),
                      new Text('Password'),
                      new TextField(
                        style: new TextStyle(
                            fontSize: 12.0,
                            color: const Color(0xFF00f0000),
                            fontWeight: FontWeight.w200,
                            fontFamily: "Roboto"),
                      ),
                      new Divider(color: const Color(0x5e5e5e)),
                      new RaisedButton(
                          key: null,
                          onPressed: fabPressed,
                          color: HexColor("FFC22C"),
                          child: new Text(
                            "Anmelden / Registrieren",
                            style: new TextStyle(
                                fontSize: 12.0,
                                color: HexColor("271F07"),
                                fontWeight: FontWeight.w900,
                                fontFamily: "Roboto"),
                          )),
                    ],
                  ),
                ),
              ),
              new Card(
                child: new Container(
                  padding: new EdgeInsets.all(32.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      new Text(
                        'Über QR Code Anmelden',
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: HexColor("271F07"),
                            fontWeight: FontWeight.w900,
                            fontFamily: "Roboto"),
                      ),
                      new Text('Reman Webanwendung'),
                      new RaisedButton(
                          key: null,
                          onPressed: fabPressed,
                          color: HexColor("FFC22C"),
                          child: new Text(
                            "Scannen",
                            style: new TextStyle(
                                fontSize: 12.0,
                                color: HexColor("271F07"),
                                fontWeight: FontWeight.w900,
                                fontFamily: "Roboto"),
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          new BottomNavigationBar(backgroundColor: HexColor("464440"), items: [
        new BottomNavigationBarItem(
          icon: const Icon(Icons.star),
          title: new Text('Title'),
        ),
        new BottomNavigationBarItem(
          icon: const Icon(Icons.star),
          title: new Text('Title'),
        ),
        new BottomNavigationBarItem(
          icon: const Icon(Icons.star),
          title: new Text('Title'),
        )
      ]),
    );
  }

  void fabPressed() {}
}