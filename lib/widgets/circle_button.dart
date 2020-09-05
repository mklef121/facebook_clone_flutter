import 'package:flutter/material.dart';

class CirlceButton extends StatelessWidget {
  final double iconSize;
  final IconData icon;
  final Function onpressed;

  CirlceButton({
    Key key,
    @required
    this.icon,
    @required
    this.iconSize,
    this.onpressed

  }): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              shape:BoxShape.circle,
              color:Colors.grey[200]
            ),
            child: IconButton(
              icon: Icon(this.icon), 
              iconSize: this.iconSize,
              onPressed: this.onpressed ?? (){},
              color: Colors.black,
            ),
          );
  }
}