import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final double activeIndex;

  const BackgroundWidget({Key key, this.activeIndex = 0}) : super(key: key);

  double getSizeByPosition(double position) {
    return activeIndex == position ? 15 : 10;
  }

  @override
  Widget build(BuildContext context) {
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
                height: getSizeByPosition(0),
                width: getSizeByPosition(0),
              ),
            ),
            SizedBox(width: 5),
            ClipOval(
              child: Container(
                color: Colors.grey,
                height: getSizeByPosition(1),
                width: getSizeByPosition(1),
              ),
            ),
            SizedBox(width: 5),
            ClipOval(
              child: Container(
                color: Colors.grey,
                height: getSizeByPosition(2),
                width: getSizeByPosition(2),
              ),
            )
          ],
        ),
      ),
    );
  }
}
