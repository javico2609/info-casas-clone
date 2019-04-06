import 'package:flutter/material.dart';
import 'package:info_casas_clone/theme/theme.dart';

class SearchButtonActionWidget extends StatelessWidget {
  final String msg;
  final Widget route;

  const SearchButtonActionWidget({
    Key key,
    this.msg,
    this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        onPressed: () {
          if (route != null) {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (c) => route),
            );
          }
        },
        color: textColor,
        child: Text(
          msg,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
