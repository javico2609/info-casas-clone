import 'package:flutter/material.dart';
import 'package:info_casas_clone/src/pages/sell.dart';
import 'package:info_casas_clone/src/shared/shared.dart';
import 'package:info_casas_clone/theme/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buscar"),
      ),
      drawer: Drawer(),
      body: SearchHomeBodyComponent(
        body: Column(
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
                  color: Colors.black45),
            ),
            SizedBox(height: 15),
            Text(
              "Qué estás buscando ?",
              style: TextStyle(fontSize: 20, color: Colors.black45),
            ),
            SizedBox(height: 40),
            SearchButtonActionWidget(msg: "VENTA", route: SellPage()),
            SizedBox(height: 10),
            SearchButtonActionWidget(msg: "ALQUILER ANUAL"),
            SizedBox(height: 10),
            SearchButtonActionWidget(msg: "ALQUILER TEMPORAL"),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
