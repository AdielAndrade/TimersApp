import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
   Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Text(
                "Power by" + '  ' + "Adiel Andrade",
                style: TextStyle(
                  color: Color(0xFF0F2E48),
                  fontSize: 13,
                ),
              ),
            ),
            
          ],
        ),
      ),
    ));
  }
}