import 'package:flutter/material.dart';
import 'package:info_casas_clone/theme/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buscar"),
      ),
      drawer: Drawer(),
      body: Stack(
        children: <Widget>[
          buildBackgroundPanel(context),
          Positioned(
            top: 0,
            height: MediaQuery.of(context).size.height - 130,
            width: MediaQuery.of(context).size.width,
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "!HOLA!",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Bienvenido a InfoCasas",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45
                      ),
                    ),
                    SizedBox(height: 15),
                     Text(
                      "Qué estás buscando ?",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black45
                      ),
                    ),
                    SizedBox(height: 40),
                    buildButtonAction("VENTA"),
                    SizedBox(height: 10),
                    buildButtonAction("ALQUILER ANUAL"),
                    SizedBox(height: 10),
                    buildButtonAction("ALQUILER TEMPORAL"),
                    SizedBox(height: 10)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildButtonAction(String msg) {
    return Container(
      height: 50,
      width: double.infinity,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        onPressed: () {},
        color: textColor,
        child: Text(
          msg,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  Widget buildBackgroundPanel(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ClipOval(
              child: Container(
                color: Colors.grey,
                height: 15,
                width: 15,
              ),
            ),
            SizedBox(width: 5),
            ClipOval(
              child: Container(
                color: Colors.grey,
                height: 10,
                width: 10,
              ),
            ),
            SizedBox(width: 5),
            ClipOval(
              child: Container(
                color: Colors.grey,
                height: 10,
                width: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
