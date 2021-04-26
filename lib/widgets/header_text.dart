import 'package:floor_calculator/core/constants.dart';
import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String label;

    const HeaderText({
      Key key,
      this.label,
    }) : super(key: key);
    
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kSmallPadding),
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor.withOpacity(kHeaderOpacity), 
        ),
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}