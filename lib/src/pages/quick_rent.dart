import 'package:flutter/material.dart';
import 'package:info_casas_clone/src/pages/search_result.dart';
import 'package:info_casas_clone/src/pages/zones_selector.dart';
import 'package:info_casas_clone/src/shared/shared.dart';
import 'package:info_casas_clone/theme/theme.dart';

class QuickRent extends StatefulWidget {
  @override
  _QuickRentState createState() => _QuickRentState();
}

class _QuickRentState extends State<QuickRent> {
  bool _showCloseZone = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buscar"),
      ),
      body: SearchHomeBodyComponent(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 15),
            Text(
              "En qué zona estás buscando ?",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 20),
            Container(
              height: 60,
              child: Card(
                elevation: 5,
                child: ListTile(
                  onTap: () async {
                    final List<dynamic> zones = await Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ZonesSelector(),
                    ));
                  },
                  leading: Icon(Icons.search),
                  title: Text("Agrega una zona"),
                ),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text("Buscar en zonas cercanas"),
              trailing: Switch(
                onChanged: (value) {
                  setState(() {
                    _showCloseZone = value;
                  });
                },
                activeColor: textColor,
                value: _showCloseZone,
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListView(
                children: _buildZones(),
              ),
            ),
            SizedBox(height: 20),
            SearchButtonActionWidget(
              msg: "Continuar",
              route: SearchResultPage(),
            )
          ],
        ),
        activeIndex: 2,
      ),
    );
  }

  Widget _buildZoneItem(String msg) {
    return ListTile(
      title: Text(msg),
      trailing: Checkbox(
        onChanged: (value) {},
        activeColor: textColor,
        value: false,
      ),
    );
  }

  List<Widget> _buildZones() {
    return !_showCloseZone
        ? [_buildZoneItem("Buceo")]
        : List.generate(
            15, (int val) => _buildZoneItem("Buceo" + val.toString()));
  }
}
