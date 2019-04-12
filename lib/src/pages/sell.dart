import 'package:flutter/material.dart';
import 'package:info_casas_clone/src/pages/quick_rent.dart';
import 'package:info_casas_clone/src/shared/shared.dart';
import 'package:info_casas_clone/theme/theme.dart';

class SellPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buscar"),
      ),
      body: SearchHomeBodyComponent(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 15),
            Text(
              "Qué tipo de propiedad ?",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 15),
            Text(
              "Puedes seleccionar varias opciones",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 15),
            Expanded(
              //height: 400,
              child: ListView(
                padding: EdgeInsets.only(left: 30, right: 30),
                children: <Widget>[
                  buildSearchOption("Casa"),
                  buildSearchOption("Apartamento"),
                  buildSearchOption("Terrenos"),
                  buildSearchOption("Locales Comerciales"),
                  buildSearchOption("Oficinas"),
                  buildSearchOption("Chacras / Campos"),
                  buildSearchOption("Garaje / Chocheras"),
                  buildSearchOption("Negocio Especial"),
                  buildSearchOption("Edificios"),
                  buildSearchOption("Hoteles"),
                  buildSearchOption("Local Industrial / Galpón"),
                ],
              ),
            ),
            SizedBox(height: 20),
            SearchButtonActionWidget(
              msg: "Continuar",
              route: QuickRent(),
            )
          ],
        ),
        activeIndex: 1,
      ),
    );
  }

  Widget buildSearchOption(String op) {
    return ListTile(
      key: Key(op),
      title: Text(op),
      trailing: Checkbox(
        onChanged: (value) {},
        activeColor: textColor,
        value: false,
      ),
    );
  }
}
