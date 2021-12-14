import 'package:flutter/material.dart';

class resaballCard extends StatelessWidget {
  resaballCard({@required this.colour, this.cardChiled, this.onPress}) {}
  final Color colour;
  final Widget cardChiled;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChiled,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
