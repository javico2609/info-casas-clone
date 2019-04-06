import 'package:flutter/material.dart';
import 'package:info_casas_clone/src/shared/shared.dart';

class SearchHomeBodyComponent extends StatelessWidget {
  final Widget body;
  final double activeIndex;

  const SearchHomeBodyComponent({
    Key key,
    this.body,
    this.activeIndex = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        BackgroundWidget(activeIndex: activeIndex),
        Positioned(
          top: 0,
          height: MediaQuery.of(context).size.height - 130,
          width: MediaQuery.of(context).size.width,
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: body,
            ),
          ),
        )
      ],
    );
  }
}
