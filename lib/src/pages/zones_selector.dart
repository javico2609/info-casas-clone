import 'package:flutter/material.dart';
import 'package:info_casas_clone/theme/theme.dart';

class ZonesSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: primaryColor,
        ),
        SafeArea(
          child: Scaffold(
            body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.withOpacity(0.3),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 50,
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 80,
                            child: IconButton(
                              icon: Icon(Icons.arrow_back),
                              onPressed: () => Navigator.of(context).pop([
                                    {'data': ''}
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          color: Colors.white,
                          child: Theme(
                            data: Theme.of(context).copyWith(
                              accentColor: primaryColor,
                            ),
                            child: ListView(
                              children: List.generate(
                                  50,
                                  (int val) =>
                                      _buildZoneItem("Buceo" + val.toString())),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildZoneItem(String msg) {
    return ListTile(
      title: Text(msg),
      subtitle: Text("Montevideo/Uruguay"),
    );
  }
}
