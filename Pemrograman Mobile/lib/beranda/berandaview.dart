import 'package:flutter/material.dart';
import 'package:ngojek/beranda/appbar.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({super.key});

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: new GojekAppBar(),
        body: new Container(
          child: new ListView(
            physics: ClampingScrollPhysics(),
            children: [
              new Container(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                color: Colors.white,
                child: new Column(
                  children: [_buildGopayMenu(), _buildGojekServiceMenu()],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGopayMenu() {
    return Container(
      height: 123.0,
      decoration: new BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
        ),
        borderRadius: new BorderRadius.all(
          new Radius.circular(3.0),
        ),
      ),

      // Widget _buildGopayMenu() {
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12.0),
            decoration: new BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
              ),
              borderRadius: new BorderRadius.only(
                topLeft: new Radius.circular(3.0),
                topRight: new Radius.circular(3.0),
              ),
            ),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  "Gopay",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontFamily: "NeoSansBold"),
                ),
                new Container(
                  child: new Text(
                    "Rp, 120.000",
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontFamily: "NeoSansBold"),
                  ),
                ),
              ],
            ),
          ),
          new Container(
              padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 12.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Image.asset(
                        "assets/icons/icon_transfer.png",
                        width: 32.0,
                        height: 32.0,
                      ),
                      new Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      new Text(
                        "Transfer",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Image.asset(
                        "assets/icons/icon_scan.png",
                        width: 32.0,
                        height: 32.0,
                      ),
                      new Padding(padding: EdgeInsets.only(top: 10.0)),
                      new Text(
                        "Scan QR",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Image.asset(
                        "assets/icons/icon_saldo.png",
                        width: 32.0,
                        height: 32.0,
                      ),
                      new Padding(padding: EdgeInsets.only(top: 10.0)),
                      new Text(
                        "Isi Saldo",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Image.asset(
                        "assets/icons/icon_menu.png",
                        width: 32.0,
                        height: 32.0,
                      ),
                      new Padding(padding: EdgeInsets.only(top: 10.0)),
                      new Text(
                        "Lainnya",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildGojekServiceMenu() {
    return new SizedBox(
      width: double.infinity,
      height: 220,
      child: Container(
        margin: EdgeInsets.only(top: 8, bottom: 8),
        child: GridView.builder(
          physics: ClampingScrollPhysics(),
          itemCount: 8,
          gridDelegate:
              new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (context, index) => Text("Gojek Menu"),
        ),
      ),
    );
  }
}
