import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class AcronymCard extends StatefulWidget {
  AcronymCard({
    @required this.title,
    @required this.subtitle,
    @required this.icon,
    @required this.backgroundIconColor,
    @required this.points,
    Key key,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final AssetImage icon;
  final Color backgroundIconColor;
  final double points;

  @override
  _AcronymCardState createState() => _AcronymCardState();
}

class _AcronymCardState extends State<AcronymCard> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            leading: CircleAvatar(
              backgroundColor: widget.backgroundIconColor,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                foregroundImage: widget.icon,
                radius: 27,
              ),
              radius: 30,
            ),
            title: Text(
              widget.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            subtitle: Text(
              widget.subtitle,
              style: TextStyle(fontSize: 11),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Icon(expanded
                      ? Icons.expand_less_outlined
                      : Icons.expand_more_outlined),
                  onTap: () {
                    setState(() {
                      expanded = !expanded;
                    });
                  },
                ),
              ],
            ),
          ),
          expanded
              ? Container(
                  child: Column(
                    children: [
                                          
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          OutlinedButton(
                              style: ElevatedButton.styleFrom(
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                              ),
                              onPressed: () {Navigator.pushNamed(context, '/assessment');},
                              child: Row(
                                children: [
                                  Text("Avaliação"),
                                ],
                              )),   ]),    
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          OutlinedButton(
                              style: ElevatedButton.styleFrom(
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                              ),
                              onPressed: () {Navigator.pushNamed(context, '/treatment');},
                              child: Row(
                                children: [
                                  Text("Tratamento"),
                                ],
                              )),    ]), 

                         Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          OutlinedButton(
                              style: ElevatedButton.styleFrom(
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                              ),
                              onPressed: () {Navigator.pushNamed(context, '/cover');},
                              child: Row(
                                children: [
                                  Text("Coberturas"),
                                ],
                              )), ]),                        
                      Text("Sua pontuação nesse tema"),
                      SmoothStarRating(
                          allowHalfRating: false,
                          starCount: 5,
                          rating: widget.points/2,
                          size: 35.0,
                          isReadOnly: true,
                          color: Colors.blue[300],
                          borderColor: Colors.blue[300],
                          spacing: 0.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                              ),
                              onPressed: () {Navigator.pushNamed(context, '/quizzes');},
                              child: Text("Avalie seu conhecimento")),
                        ],
                      )
                    ],
                  ),
                )
              : SizedBox()
        ],
      ),
      elevation: 5,
    );
  }
}
