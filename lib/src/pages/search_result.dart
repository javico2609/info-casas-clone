import 'package:flutter/material.dart';
import 'package:info_casas_clone/src/data/data.dart';

class SearchResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Más de 1000 resultados"),
        actions: <Widget>[Icon(Icons.filter_list), SizedBox(width: 10)],
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int pos) {
            return Card(
              child: Container(
                height: 300,
                width: width,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(data[pos].img),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Positioned(
                      top: 220,
                      width: width,
                      child: ListTile(
                        title: Text(
                          "USD 100.000",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Saletis bertis"),
                            Text("1 Dormitorio 1 Baño 37m2"),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 168,
                      right: 15,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: FloatingActionButton(
                          backgroundColor: Colors.white,
                          onPressed: () {},
                          child: Icon(
                            Icons.favorite,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
