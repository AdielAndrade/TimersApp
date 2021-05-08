import 'package:flutter/material.dart';

class ExpandedCustom extends StatefulWidget {

  final Widget init;
  final Widget hide;

  ExpandedCustom(this.init, this.hide);



  @override
  _ExpandedState createState() => _ExpandedState();
}

class _ExpandedState extends State<ExpandedCustom> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: widget.init,
          trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Icon(show
                      ? Icons.expand_less_outlined
                      : Icons.expand_more_outlined),
                  onTap: () {
                    setState(() {
                      show = !show;
                    });
                  },
                ),
              ],
            ),
        ),show ?
        Container(
          child: widget.hide,
        )
        : SizedBox()
        
      ],
    );
  }
}